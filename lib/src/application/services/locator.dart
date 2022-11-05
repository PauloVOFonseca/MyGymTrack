import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_gym_track/src/application/services/locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);
