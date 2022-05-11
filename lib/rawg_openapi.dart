import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    inputSpecFile: 'https://api.rawg.io/docs/?format=openapi',
    generatorName: Generator.dart,
    outputDirectory: 'rawg_client')
class RAWGOpenAPI extends OpenapiGeneratorConfig {}
