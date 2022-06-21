import 'package:api/services/netwwork_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator(){
  GetIt.I.registerSingleton(NetworkService());
}