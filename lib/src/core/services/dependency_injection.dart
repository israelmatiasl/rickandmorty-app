


import 'package:get_it/get_it.dart';
import 'package:rickandmorty_app/src/core/providers/http_provider.dart';
import 'package:rickandmorty_app/src/core/providers/proference_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {

  _initOnBoardingFeature();

  sl.registerLazySingleton(() => HttpProvider());
  sl.registerLazySingleton(() => AppPreferences());

  final preferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => preferences);

  await (AppPreferences()).initPrefs();
}

Future<void> _initOnBoardingFeature() async {

}