import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:game_management/app/core/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
