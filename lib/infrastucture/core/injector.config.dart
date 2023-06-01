// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe_service/application/auth/auth_bloc.dart' as _i12;
import 'package:recipe_service/application/auth/sign_in/sign_in_bloc.dart'
    as _i11;
import 'package:recipe_service/application/post/post_bloc.dart' as _i6;
import 'package:recipe_service/domain/facade/auth/auth_facade.dart' as _i9;
import 'package:recipe_service/domain/facade/profile/profile_facade.dart'
    as _i7;
import 'package:recipe_service/infrastucture/auth/firebase_auth_facade.dart'
    as _i10;
import 'package:recipe_service/infrastucture/auth/firebase_user_mapper.dart'
    as _i4;
import 'package:recipe_service/infrastucture/core/firebase_injector.dart'
    as _i13;
import 'package:recipe_service/infrastucture/profile/firebase_profile_facade.dart'
    as _i8;

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
    gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseInjector.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseUserMapper>(() => _i4.FirebaseUserMapper());
    gh.lazySingleton<_i5.GoogleSignIn>(() => firebaseInjector.googleSignIn);
    gh.factory<_i6.PostBloc>(() => _i6.PostBloc());
    gh.lazySingleton<_i7.ProfileFacade>(
      () => _i8.FirebaseProfileFacade(gh<_i3.FirebaseAuth>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i9.AuthFacade>(
      () => _i10.FirebaseAuthFacade(
        gh<_i3.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
        gh<_i4.FirebaseUserMapper>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc(gh<_i9.AuthFacade>()));
    gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i9.AuthFacade>()));
    return this;
  }
}

class _$FirebaseInjector extends _i13.FirebaseInjector {}
