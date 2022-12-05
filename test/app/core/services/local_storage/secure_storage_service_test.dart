import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:mentoria_clean_arch/app/core/services/local_storage/local_storage.dart';
import 'package:mentoria_clean_arch/app/core/services/local_storage/secure_storage_service.dart';

class _MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  final secure = _MockFlutterSecureStorage();
  late LocalStorage localStorage;

  setUp(() {
    localStorage = SecureStorage(secure);
  });

  group("Testes para read():", () {
    test(
      "Deve retornar String se o tipo armazenado for String",
      () async {
        // Arrange
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => "Stephen Strange");

        // Act
        final result = await localStorage.read<String>("name");

        // Assert
        expect(result, "Stephen Strange");
        verify(() => secure.read(key: "name")).called(1);
      },
    );

    test(
      "Deve retornar bool se o tipo armazenado for bool",
      () async {
        // Arrange
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => "true");

        // Act
        final result = await localStorage.read<bool>("age");

        // Assert
        expect(result, true);
        verify(() => secure.read(key: "age")).called(1);
      },
    );

    test(
      "Deve retornar int se o tipo armazenado for int",
      () async {
        // Arrange
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => "22");

        // Act
        final result = await localStorage.read<int>("age");

        // Assert
        expect(result, 22);
        verify(() => secure.read(key: "age")).called(1);
      },
    );

    test(
      "Deve retornar double se o tipo armazenado for double",
      () async {
        // Arrange
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => "156.34");

        // Act
        final result = await localStorage.read<double>("price");

        // Assert
        expect(result, 156.34);
        verify(() => secure.read(key: "price")).called(1);
      },
    );

    test(
      "Deve retornar Map<String, dynamic> se o tipo armazenado for Map<String, dynamic>",
      () async {
        // Arrange
        final person = {"name": "Stephen Strange", "age": 22, "mage": true};
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => jsonEncode(person));

        // Act
        final result = await localStorage.read<Map<String, dynamic>>("person");

        // Assert
        expect(result, person);
        verify(() => secure.read(key: "person")).called(1);
      },
    );

    test(
      "Deve retornar List<Map<String, dynamic>> se o tipo armazenado for List<Map<String, dynamic>>",
      () async {
        // Arrange
        final persons = [
          {"name": "Stephen Strange", "age": 22, "mage": true},
          {"name": "Mathhew Murdock", "age": 28, "mage": false},
        ];
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => jsonEncode(persons));

        // Act
        final result = await localStorage.read<List<Map<String, dynamic>>>("persons");

        // Assert
        expect(result, persons);
        verify(() => secure.read(key: "persons")).called(1);
      },
    );

    test(
      "Deve retornar null se NÃO houver valor armazenado para a chave dada",
      () async {
        // Arrange
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => null);

        // Act
        final result = await localStorage.read<String>("name");

        // Assert
        expect(result, null);
        verify(() => secure.read(key: "name")).called(1);
      },
    );

    test(
      "Deve dar InvalidStorageTypeException se o tipo armazenado for diferente do tipo solicitado",
      () async {
        // Arrange
        when(() => secure.read(key: any(named: "key"))).thenAnswer((_) async => "Stephen Strange");

        // Act
        final result1 = localStorage.read<int>("age");
        final result2 = localStorage.read<double>("price");
        final result3 = localStorage.read<bool>("isLogged");
        final result4 = localStorage.read<Map<String, dynamic>>("person");
        final result5 = localStorage.read<List<Map<String, dynamic>>>("persons");

        // Assert
        expect(() => result1, throwsA(isA<InvalidStorageTypeException>()));
        expect(() => result2, throwsA(isA<InvalidStorageTypeException>()));
        expect(() => result3, throwsA(isA<InvalidStorageTypeException>()));
        expect(() => result4, throwsA(isA<InvalidStorageTypeException>()));
        expect(() => result5, throwsA(isA<InvalidStorageTypeException>()));
        verify(() => secure.read(key: "age")).called(1);
        verify(() => secure.read(key: "price")).called(1);
        verify(() => secure.read(key: "isLogged")).called(1);
        verify(() => secure.read(key: "person")).called(1);
        verify(() => secure.read(key: "persons")).called(1);
      },
    );
  });

  group("Testes para write():", () {
    test(
      "Deve escrever no LocalStorage quando for String, bool, int ou double",
      () async {
        // Arrange
        final person = {"name": "Stephen Strange", "age": 22, "mage": true};
        final persons = [
          {"name": "Stephen Strange", "age": 22, "mage": true},
          {"name": "Mathhew Murdock", "age": 28, "mage": false},
        ];
        when(() => secure.write(key: any(named: "key"), value: any(named: "value"))).thenAnswer((_) async => {});

        // Act
        await localStorage.write("name", "Stephen Strange");
        await localStorage.write("age", 22);
        await localStorage.write("price", 125.67);
        await localStorage.write("isLogged", true);
        await localStorage.write("person", person);
        await localStorage.write("persons", persons);

        // Assert
        verify(() => secure.write(key: "name", value: "Stephen Strange")).called(1);
        verify(() => secure.write(key: "age", value: "22")).called(1);
        verify(() => secure.write(key: "price", value: "125.67")).called(1);
        verify(() => secure.write(key: "isLogged", value: "true")).called(1);
        verify(() => secure.write(key: "person", value: jsonEncode(person))).called(1);
        verify(() => secure.write(key: "persons", value: jsonEncode(persons))).called(1);
      },
    );

    test(
      "Deve dar UnsupportedStorageTypeException quando tentar escrever um tipo não aceito",
      () async {
        // Arrange
        final input = [1, 2, 3];
        when(() => secure.write(key: any(named: "key"), value: any(named: "value"))).thenAnswer((_) async => {});

        // Act
        final result = localStorage.write("strange", input);

        // Assert
        expect(() => result, throwsA(isA<UnsupportedStorageTypeException>()));
        verifyNever(() => secure.write(key: "strange", value: any(named: "value")));
      },
    );
  });

  group("Testes para delete(): ", () {
    test(
      "Deve chamar o método do FlutterSecureStorage",
      () async {
        // Arrange
        when(() => secure.delete(key: any(named: "key"))).thenAnswer((_) async => {});

        // Act
        await localStorage.delete("nice");

        // Assert
        verify(() => secure.delete(key: "nice")).called(1);
      },
    );
  });

  group("Testes para clearAll(): ", () {
    test(
      "Deve chamar o método do FlutterSecureStorage",
      () async {
        // Arrange
        when(() => secure.deleteAll()).thenAnswer((_) async => {});

        // Act
        await localStorage.clearAll();

        // Assert
        verify(() => secure.deleteAll()).called(1);
      },
    );
  });

  group("Testes para contains(): ", () {
    test(
      "Deve retornar true se a chave existir",
      () async {
        // Arrange
        when(() => secure.containsKey(key: any(named: "key"))).thenAnswer((_) async => true);

        // Act
        final result = await localStorage.contains("userId");

        // Assert
        expect(result, true);
        verify(() => secure.containsKey(key: "userId")).called(1);
      },
    );

    test(
      "Deve retornar false se a chave NÃO existir",
      () async {
        // Arrange
        when(() => secure.containsKey(key: any(named: "key"))).thenAnswer((_) async => false);

        // Act
        final result = await localStorage.contains("userId");

        // Assert
        expect(result, false);
        verify(() => secure.containsKey(key: "userId")).called(1);
      },
    );
  });
}
