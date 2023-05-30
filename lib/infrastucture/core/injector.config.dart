// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe/app_router.dart' as _i3;
import 'package:recipe/domain/auth/auth_facade.dart' as _i10;
import 'package:recipe/infrastucture/auth/firebase_auth_facade.dart' as _i11;
import 'package:recipe/infrastucture/auth/firebase_user_mapper.dart' as _i6;
import 'package:recipe/presentation/bloc/auth_bloc.dart' as _i4;
import 'package:recipe/presentation/bloc/bookmarks_bloc.dart' as _i5;
import 'package:recipe/presentation/bloc/home_bloc.dart' as _i7;
import 'package:recipe/presentation/bloc/page_bloc.dart' as _i8;
import 'package:recipe/presentation/bloc/profile_bloc.dart' as _i9;

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
    gh.lazySingleton<_i6.FirebaseUserMapper>(() => _i6.FirebaseUserMapper());
    gh.singleton<_i7.HomeBloc>(_i7.HomeBloc());
    gh.singleton<_i8.PageBloc>(_i8.PageBloc());
    gh.singleton<_i9.ProfileBloc>(_i9.ProfileBloc());
    gh.lazySingleton<_i10.AuthFacade>(
      () => _i11.FirebaseAuthFacade(
        gh<_i12.FirebaseAuth>(),
        gh<_i13.GoogleSignIn>(),
        gh<_i6.FirebaseUserMapper>(),
      ),
      registerFor: {_prod},
    );
    return this;
  }
}
