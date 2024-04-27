class SimpleBind {
  final _dependencies = <Type, dynamic>{};

  // Construtor privado
  SimpleBind._internal();

  // Armazena a instância única
  static final SimpleBind _instance = SimpleBind._internal();

  // Método para acessar a instância
  static SimpleBind get instance => _instance;

  // Método para injetar dependências
  void bind<T>(T instance) {
    _dependencies[T] = instance;
  }

  // Método para recuperar dependências
  T get<T>() {
    final instance = _dependencies[T];
    if (instance == null) {
      throw Exception("Dependency of type $T not found");
    }
    return instance as T;
  }
}