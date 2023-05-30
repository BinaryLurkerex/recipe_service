// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe/app_router.dart' as _i3;
import 'package:recipe/application/auth/auth_bloc.dart' as _i15;
import 'package:recipe/application/auth/sign_in/sign_in_bloc.dart' as _i14;
import 'package:recipe/domain/auth/auth_facade.dart' as _i12;
import 'package:recipe/infrastucture/auth/firebase_auth_facade.dart' as _i13;
import 'package:recipe/infrastucture/auth/firebase_user_mapper.dart' as _i7;
import 'package:recipe/infrastucture/core/firebase_inject.dart' as _i16;
import 'package:recipe/presentation/bloc/auth_bloc.dart' as _i4;
import 'package:recipe/presentation/bloc/bookmarks_bloc.dart' as _i5;
import 'package:recipe/presentation/bloc/home_bloc.dart' as _i9;
import 'package:recipe/presentation/bloc/page_bloc.dart' as _i10;
import 'package:recipe/presentation/bloc/profile_bloc.dart' as _i11;

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
    final firebaseInject = _$FirebaseInject();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.AuthBloc>(_i4.AuthBloc());
    gh.singleton<_i5.BookmarksBloc>(_i5.BookmarksBloc());
    gh.lazySingleton<_i6.FirebaseAuth>(() => firebaseInject.firebaseAuth);
    gh.lazySingleton<_i7.FirebaseUserMapper>(() => _i7.FirebaseUserMapper());
    gh.lazySingleton<_i8.GoogleSignIn>(() => firebaseInject.googleSignIn);
    gh.singleton<_i9.HomeBloc>(_i9.HomeBloc());
    gh.singleton<_i10.PageBloc>(_i10.PageBloc());
    gh.singleton<_i11.ProfileBloc>(_i11.ProfileBloc());
    gh.lazySingleton<_i12.AuthFacade>(
      () => _i13.FirebaseAuthFacade(
        gh<_i6.FirebaseAuth>(),
        gh<_i8.GoogleSignIn>(),
        gh<_i7.FirebaseUserMapper>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i14.SignInBloc>(() => _i14.SignInBloc(gh<_i12.AuthFacade>()));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i12.AuthFacade>()));
    return this;
  }
}

class _$FirebaseInject extends _i16.FirebaseInject {}
