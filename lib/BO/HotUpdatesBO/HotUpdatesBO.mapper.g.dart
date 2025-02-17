// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'HotUpdatesBO.dart' as x0 show HotUpdatesBO, HotResults, Media, MediaMetadata;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
// No output from reflectable, there is no `main`.
final hotUpdatesBoGeneratedAdapter = JsonMapperAdapter(
  title: 'newyorktimes',
  url: 'package:newyorktimes/BO/HotUpdatesBO/HotUpdatesBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.HotUpdatesBO>>(): (value) => value.cast<x0.HotUpdatesBO>(),
    typeOf<Set<x0.HotUpdatesBO>>(): (value) => value.cast<x0.HotUpdatesBO>(),
    typeOf<List<x0.HotResults>>(): (value) => value.cast<x0.HotResults>(),
    typeOf<Set<x0.HotResults>>(): (value) => value.cast<x0.HotResults>(),
    typeOf<List<x0.Media>>(): (value) => value.cast<x0.Media>(),
    typeOf<Set<x0.Media>>(): (value) => value.cast<x0.Media>(),
    typeOf<List<x0.MediaMetadata>>(): (value) => value.cast<x0.MediaMetadata>(),
    typeOf<Set<x0.MediaMetadata>>(): (value) => value.cast<x0.MediaMetadata>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, hotUpdatesBoGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}