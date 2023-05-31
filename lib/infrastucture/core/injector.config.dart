// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe_service/app_router.dart' as _i3;
import 'package:recipe_service/application/auth/auth_bloc.dart' as _i13;
import 'package:recipe_service/application/auth/sign_in/sign_in_bloc.dart'
    as _i12;
import 'package:recipe_service/application/post/post_bloc.dart' as _i7;
import 'package:recipe_service/domain/facade/auth/auth_facade.dart' as _i10;
import 'package:recipe_service/domain/facade/profile/profile_facade.dart'
    as _i8;
import 'package:recipe_service/infrastucture/auth/firebase_auth_facade.dart'
    as _i11;
import 'package:recipe_service/infrastucture/auth/firebase_user_mapper.dart'
    as _i5;
import 'package:recipe_service/infrastucture/core/firebase_injector.dart'
    as _i14;
import 'package:recipe_service/infrastucture/profile/firebase_profile_facade.dart'
    as _i9;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjector = _$FirebaseInjector();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.FirebaseAuth>(() => firebaseInjector.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseUserMapper>(() => _i5.FirebaseUserMapper());
    gh.lazySingleton<_i6.GoogleSignIn>(() => firebaseInjector.googleSignIn);
    gh.factory<_i7.PostBloc>(() => _i7.PostBloc());
    gh.lazySingleton<_i8.ProfileFacade>(
      () => _i9.FirebaseProfileFacade(gh<_i4.FirebaseAuth>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i10.AuthFacade>(
      () => _i11.FirebaseAuthFacade(
        gh<_i4.FirebaseAuth>(),
        gh<_i6.GoogleSignIn>(),
        gh<_i5.FirebaseUserMapper>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i12.SignInBloc>(() => _i12.SignInBloc(gh<_i10.AuthFacade>()));
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i10.AuthFacade>()));
    return this;
  }
}

class _$FirebaseInjector extends _i14.FirebaseInjector {}
