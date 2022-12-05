// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/login/data/datasources/login_remote_datasource.dart'
    as _i7;
import '../../modules/login/data/datasources/retrofit_login_remote_datasource.dart'
    as _i8;
import '../../modules/login/data/repositories/login_repository_impl.dart'
    as _i10;
import '../../modules/login/domain/repositories/login_repository.dart' as _i9;
import '../../modules/login/domain/usecases/login_usecase.dart' as _i11;
import '../../modules/login/presentation/pages/login_store.dart' as _i12;
import '../services/local_storage/local_storage.dart' as _i5;
import '../services/local_storage/secure_storage_service.dart' as _i6;
import 'register_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage);
  gh.factory<_i5.LocalStorage>(
      () => _i6.SecureStorage(get<_i4.FlutterSecureStorage>()));
  gh.factory<_i7.LoginRemoteDatasource>(
      () => _i8.RetrofitLoginRemoteDatasource(get<_i3.Dio>()));
  gh.factory<_i9.LoginRepository>(() => _i10.LoginRepositoryImpl(
        get<_i7.LoginRemoteDatasource>(),
        get<_i5.LocalStorage>(),
      ));
  gh.factory<_i11.LoginUsecase>(
      () => _i11.LoginUsecaseImpl(get<_i9.LoginRepository>()));
  gh.factory<_i12.LoginStore>(() => _i12.LoginStore(get<_i11.LoginUsecase>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
