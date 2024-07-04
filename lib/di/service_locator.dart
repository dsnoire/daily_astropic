import 'package:daily_astropic/astro_picture/data/data_repository.dart';
import 'package:daily_astropic/astro_picture/data/remote_data_source.dart';
import 'package:daily_astropic/astro_picture/presentation/bloc/astro_picture_bloc/astro_picture_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initializeServiceLocator() {
  _setupRemoteDataSource();
  _setupDataRepository();
  _setupBloc();
}

GetIt _setupRemoteDataSource() {
  return sl..registerFactory(() => RemoteDataSource());
}

GetIt _setupDataRepository() {
  return sl..registerFactory(() => DataRepository(sl.get<RemoteDataSource>()));
}

GetIt _setupBloc() {
  return sl..registerFactory(() => AstroPictureCubit(sl.get<DataRepository>()));
}
