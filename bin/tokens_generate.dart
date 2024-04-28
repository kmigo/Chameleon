import 'dart:convert';
import 'dart:io';

import 'dart:developer' as dev;
const directoryEnum = 'lib/src/utils/enums';
String buildEnumPath(String name) {
  return "$directoryEnum/${name}_enum.dart";
}


// Caminho para o arquivo Dart de saída
var dartDirectory = 'lib/src/utils/resources/tokens';
var dartFilePath = '$dartDirectory/design_tokens.dart';

const dsName = "Chameleon";

verifyDirectory(String path) {
  var currentDirectory = Directory.current.path;
  final directory = Directory("$currentDirectory/$path");
  if(!directory.existsSync()){
    directory.createSync(recursive: true);
  }
  }

void main(List<String> arguments) async {
  var args = {};
  for (var arg in arguments) {
    if(!arg.contains('=')){
      continue;
    }
    var split = arg.split('=');
    args[split[0]] = split[1];
  }
  String? defaultTokens=  args['--path'];
  // Caminho para o arquivo JSON
  verifyDirectory(directoryEnum);
  verifyDirectory(dartDirectory);
  var jsonFilePath = defaultTokens ??  './assets/design_tokens/design_token.json';
  // Ler o arquivo JSON
  var jsonString = await File(jsonFilePath).readAsString();
  // Decodificar o JSON para um mapa
  Map<String, dynamic> jsonMap = jsonDecode(jsonString);
  for(var key in jsonMap.keys){
    if(jsonMap[key] is Map){
      keysMapToClassList.add(key);
      enumsToClassMap.add(key);
    }
  }
  
  var nameClasse = '_ChameleonDesignTokens';
  String classString = "// ignore_for_file: library_private_types_in_public_api\nimport 'dart:convert';\nimport 'package:flutter/services.dart';\n";
  classString = _createClass(nameClasse, jsonMap, classString);
  
  // Escrever a string da classe no arquivo Dart
  classString = singletonDesign(nameClasse, classString,jsonMap);
  await File(dartFilePath).writeAsString(classString);

  dev.log('Classe Dart criada com sucesso!');
}

String singletonDesign(String nameClasse,String classString,Map<String,dynamic> jsonMap){
  classString+="""
class ChameleonDesignTokens {


  ChameleonDesignTokens._();
""";
final List<String> params = [];
for (var key in jsonMap.keys) {
  final _type = _dartType(jsonMap[key]);
  params.add(key);
  if(_type == 'Map'){
    
    params.add("${key}Map");
    classString += '  final Map<String,dynamic> ${key}Map = {};\n';
  classString += '  late ${_captalize(key)} $key;\n';
  }else{
    classString += '  late $_type $key;\n';
  }
}

classString += '   static final ChameleonDesignTokens instance = ChameleonDesignTokens._();\n';
classString += "\nFuture<void> init(String path) async {\n";
classString+="""
     final jsonString = await rootBundle.loadString(path);
     Map<String, dynamic> jsonMap = jsonDecode(jsonString);
     final designTokens = $nameClasse.fromJson(jsonMap);
""";
for (var key in params) {
  if(key.contains('Map')){
    classString += '     $key.addAll($key);\n';
}else{
  classString += '     $key = designTokens.$key;\n';
}
}
classString += '  }}\n';
  return classString;

}

// class lazy singleton ChameleonDesign 
// class ChameleonDesignTokens {
//   static const String _tokenPath =
//       "packages/heart_ui/assets/design_tokens/design_token.json";

//   ChameleonDesignTokens._();

//   late _Typography typography;
//   late double sizeScale;
//   late Map<String, dynamic> typographyMap;
//   late _Colors colors;
//   late Map<String, dynamic> colorsMap;

//   static final ChameleonDesignTokens instance = ChameleonDesignTokens._();

//   init() async {
//     final jsonString = await rootBundle.loadString(_tokenPath);

//     Map<String, dynamic> jsonMap = jsonDecode(jsonString);
//     final designTokens = _DesignTokens.fromJson(jsonMap);
//     sizeScale = designTokens.figmaScale;
//     typography = designTokens.typography;
//     typographyMap = _typographyMap;
//     colors = designTokens.colors;
//     colorsMap = _colorsMap;
//   }
// }


final keysMapToClassList = <String>[];
final enumsToClassMap = <String>[];

final Map<String, List<Map<String, dynamic>>> keysMapToClassGroup = {};

String _createClass(
    String nameClasse, Map<dynamic, dynamic> jsonMap, String classString) {
  // Iniciar a construção da classe
  classString = '$classString class $nameClasse {\n';
  final List<String> othersClasses = [];

  classString = _addAttributes(jsonMap, classString,
      addClass: (nameClass) => othersClasses.add(nameClass),
      onKeysMapToClass: (key, json) {
        if (keysMapToClassList
            .map((e) => _captalize(e))
            .toList()
            .contains(nameClasse)) {
          final paramNamMapToClass =
              "_${nameClasse.replaceAll('_', '').toLowerCase()}Map";
          // print("paramNamMapToClass: $paramNamMapToClass key: $key newName: ${_captalize(key)}");
          if (!keysMapToClassGroup.containsKey(paramNamMapToClass)) {
            keysMapToClassGroup[paramNamMapToClass] = [];
          }
          keysMapToClassGroup[paramNamMapToClass]
              ?.add({'key': key, 'value': json});
        }
      });
  String lastKeyMap = '';
  List<String> lastItemsToenum = [];
  classString = _generateConstructor(jsonMap, classString, nameClasse);
  // print('keysMapToClass: $keysMapToClassGroup');
  String addExtraCode = '';
  for (var keyMap in keysMapToClassGroup.keys.toList()) {
    //  print('keyName: $keyMap list: ${keysMapToClassGroup[keyMap]}');

    final listClass = keysMapToClassGroup[keyMap]!;
    for (var classObject in listClass) {
      addExtraCode +=
          '$keyMap["${classObject['key']}"] = ${_captalize(classObject['key'])}.fromJson(json[\'${classObject['key']}\']);\n';
    }
    final trash = keysMapToClassGroup.remove(keyMap);
    lastItemsToenum.clear();
    lastItemsToenum.addAll(trash!.map<String>((e) => e['key']).toList());
    lastKeyMap = keyMap;
  }
  classString = _fromJson(nameClasse, jsonMap, classString, addExtraCode);
  classString = _closeClass(classString);
  for (var nameClass in othersClasses) {
    classString =
        _createClass(_captalize(nameClass), jsonMap[nameClass], classString);
  }
  if (lastKeyMap.isNotEmpty) {
    classString += 'final Map<String,dynamic> $lastKeyMap = {};\n';

    final makeEnum =
        'enum $dsName${nameClasse.replaceAll('_', '')}Enum {\n ${lastItemsToenum.map((e) => "$e, \n").join('')} }\n';
    File(buildEnumPath(nameClasse.replaceAll('_', '').toLowerCase()))
        .writeAsString(makeEnum);
  }

  return classString;
}

String _generateConstructor(
    Map<dynamic, dynamic> jsonMap, String classString, String nameClasse) {
  // Adicionar o construtor
  classString += '\n  $nameClasse({\n';
  for (var key in jsonMap.keys) {
    classString += '    required this.$key,\n';
  }
  classString += '  });\n';
  return classString;
}

String _addAttributes(Map<dynamic, dynamic> jsonMap, String classString,
    {required Function(String) addClass,
    required Function(String, Map<String, dynamic>) onKeysMapToClass}) {
  // Adicionar atributos com base nas chaves do JSON
  jsonMap.forEach((key, value) {
    // Determinar o tipo com base no valor

    String type = _dartType(value);
    if ('Map' == type) {
      addClass(key);
      onKeysMapToClass(key, value);
      type = _captalize(key);
    }
    classString += '  final $type $key;\n';
  });
  classString += '\n';
  return classString;
}

String _captalize(String string) {
  return "_${string[0].toUpperCase() + string.substring(1)}";
}

String _closeClass(String classString) {
  // Finalizar a classe
  classString += '}\n';
  return classString;
}

String _fromJson(
    String nameClasse, Map<dynamic, dynamic> jsonMap, String classString,
    [String codeExtra = '']) {
  classString +=
      '  factory $nameClasse.fromJson(Map<String, dynamic> json) {\n$codeExtra';
  classString += '    return $nameClasse(\n';
  jsonMap.forEach((key, value) {
    String type = _dartType(value);
    if ('Map' == type) {
      type = _captalize(key);
      classString += '      $key: $type.fromJson(json[\'$key\']),\n';
    } else {
      classString += '      $key: json[\'$key\'],\n';
    }
  });
  classString += '    );\n';
  classString += '  }\n';
  return classString;
}


String _dartType(dynamic value) {
  if (value is Map) return 'Map';
  if (value is int) return 'int';
  if (value is double) return 'double';
  if (value is bool) return 'bool';
  if (value is List) return 'List';
  // Adicione mais tipos conforme necessário
  return 'String'; // Padrão para string se não for nenhum dos tipos acima
}