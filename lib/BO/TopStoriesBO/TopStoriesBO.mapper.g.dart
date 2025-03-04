// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'TopStoriesBO.dart' as x0 show TopStoriesBO, Results, Multimedia;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
// No output from reflectable, there is no `main`.
final topStoriesBoGeneratedAdapter = JsonMapperAdapter(
  title: 'newyorktimes',
  url: 'package:newyorktimes/BO/TopStoriesBO/TopStoriesBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.TopStoriesBO>>(): (value) => value.cast<x0.TopStoriesBO>(),
    typeOf<Set<x0.TopStoriesBO>>(): (value) => value.cast<x0.TopStoriesBO>(),
    typeOf<List<x0.Results>>(): (value) => value.cast<x0.Results>(),
    typeOf<Set<x0.Results>>(): (value) => value.cast<x0.Results>(),
    typeOf<List<x0.Multimedia>>(): (value) => value.cast<x0.Multimedia>(),
    typeOf<Set<x0.Multimedia>>(): (value) => value.cast<x0.Multimedia>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, topStoriesBoGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}