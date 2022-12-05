abstract class LocalStorage {
  Future<T?> read<T>(String key);

  Future<void> write(String key, dynamic value);

  /// Apaga os dados referentes à `key` passada
  Future<void> delete(String key);

  /// Apaga todos os dados no LocalStorage
  Future<void> clearAll();

  /// Verifica se a `key` passada existe no LocalStorage
  Future<bool> contains(String key);
}

class InvalidStorageTypeException implements Exception {
  final String message;

  InvalidStorageTypeException(this.message);

  @override
  String toString() => 'InvalidStorageTypeException(message: $message)';
}

class UnsupportedStorageTypeException implements Exception {
  final String message;

  UnsupportedStorageTypeException(this.message);

  @override
  String toString() => 'InvalidStorageTypeException(message: $message)';
}
