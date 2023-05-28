// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recipe/src/presentation/bloc/auth_bloc.dart' as _i4;
import 'package:recipe/src/presentation/bloc/bookmarks_bloc.dart' as _i5;
import 'package:recipe/src/presentation/bloc/profile_bloc.dart' as _i6;
import 'package:recipe/src/router.dart' as _i3;

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
    gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
    gh.factory<_i5.BookmarksBloc>(() => _i5.BookmarksBloc());
    gh.factory<_i6.ProfileBloc>(() => _i6.ProfileBloc());
    return this;
  }
}
