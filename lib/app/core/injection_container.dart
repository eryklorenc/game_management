import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:game_management/app/core/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module  
abstract class RegisterModule {  
  @Named("BaseUrl")  
  String get baseUrl => 'https://jsonplaceholder.typicode.com';  

  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));  

}  
