// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:game_management/app/core/utils/injection_container.dart'
    as _i12;
import 'package:game_management/data/remote_data_sources/items_library_remote_data_sources.dart'
    as _i3;
import 'package:game_management/data/remote_data_sources/items_wish_list_remote_data_sources.dart'
    as _i4;
import 'package:game_management/data/remote_data_sources/most_popular_remote_data_sources.dart'
    as _i7;
import 'package:game_management/features/auth/cubit/root_cubit.dart' as _i5;
import 'package:game_management/features/home/library_page/cubit/library_page_cubit.dart'
    as _i9;
import 'package:game_management/features/home/most_popular/cubit/most_popular_cubit.dart'
    as _i10;
import 'package:game_management/features/home/wish_list/cubit/wish_list_cubit.dart'
    as _i11;
import 'package:game_management/repositories/items_repository.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    final registerModule = _$RegisterModule();
    gh.factory<_i3.ItemsLibraryRemoteDataSource>(
        () => _i3.ItemsLibraryRemoteDataSource());
    gh.factory<_i4.ItemsWishListRemoteDataSource>(
        () => _i4.ItemsWishListRemoteDataSource());
    gh.factory<_i5.RootCubit>(() => _i5.RootCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i6.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.MostPopularRemoteRetrofitDataSource>(
        () => _i7.MostPopularRemoteRetrofitDataSource(gh<_i6.Dio>()));
    gh.factory<_i8.ItemsRepository>(() => _i8.ItemsRepository(
          itemsLibraryRemoteDataSource: gh<_i3.ItemsLibraryRemoteDataSource>(),
          itemsWishListRemoteDataSource:
              gh<_i4.ItemsWishListRemoteDataSource>(),
          mostPopularRemoteDataSource:
              gh<_i7.MostPopularRemoteRetrofitDataSource>(),
        ));
    gh.factory<_i9.LibraryPageCubit>(
        () => _i9.LibraryPageCubit(gh<_i8.ItemsRepository>()));
    gh.factory<_i10.MostPopularCubit>(
        () => _i10.MostPopularCubit(gh<_i8.ItemsRepository>()));
    gh.factory<_i11.WishListCubit>(
        () => _i11.WishListCubit(gh<_i8.ItemsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
