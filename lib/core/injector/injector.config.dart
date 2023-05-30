// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe/src/infrastucture/auth/firebase_auth_facade.dart' as _i6;
import 'package:recipe/src/infrastucture/auth/firebase_user_mapper.dart' as _i9;
import 'package:recipe/src/presentation/bloc/auth_bloc.dart' as _i4;
import 'package:recipe/src/presentation/bloc/bookmarks_bloc.dart' as _i5;
import 'package:recipe/src/presentation/bloc/home_bloc.dart' as _i10;
import 'package:recipe/src/presentation/bloc/page_bloc.dart' as _i11;
import 'package:recipe/src/presentation/bloc/profile_bloc.dart' as _i12;
import 'package:recipe/src/router.dart' as _i3;

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
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.AuthBloc>(_i4.AuthBloc());
    gh.singleton<_i5.BookmarksBloc>(_i5.BookmarksBloc());
    gh.lazySingleton<_i6.FirebaseAuthFacade>(
      () => _i6.FirebaseAuthFacade(
        gh<_i7.FirebaseAuth>(),
        gh<_i8.GoogleSignIn>(),
        gh<dynamic>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i9.FirebaseUserMapper>(() => _i9.FirebaseUserMapper());
    gh.singleton<_i10.HomeBloc>(_i10.HomeBloc());
    gh.singleton<_i11.PageBloc>(_i11.PageBloc());
    gh.singleton<_i12.ProfileBloc>(_i12.ProfileBloc());
    return this;
  }
}
