import 'package:envied/envied.dart';

part 'env_variables.g.dart';

@envied
abstract class Env {
  @EnviedField(varName: 'base_url')
  static const String baseUrl = _Env.baseUrl;
}
