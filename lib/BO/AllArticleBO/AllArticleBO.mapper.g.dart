// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'AllArticleBO.dart' as x0 show AllArticleBO, Responses, Docs, Multimedia, Legacy, Headline, Keywords, Byline, Meta;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
// No output from reflectable, there is no `main`.
final allArticleBoGeneratedAdapter = JsonMapperAdapter(
  title: 'newyorktimes',
  url: 'package:newyorktimes/BO/AllArticleBO/AllArticleBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.AllArticleBO>>(): (value) => value.cast<x0.AllArticleBO>(),
    typeOf<Set<x0.AllArticleBO>>(): (value) => value.cast<x0.AllArticleBO>(),
    typeOf<List<x0.Responses>>(): (value) => value.cast<x0.Responses>(),
    typeOf<Set<x0.Responses>>(): (value) => value.cast<x0.Responses>(),
    typeOf<List<x0.Docs>>(): (value) => value.cast<x0.Docs>(),
    typeOf<Set<x0.Docs>>(): (value) => value.cast<x0.Docs>(),
    typeOf<List<x0.Multimedia>>(): (value) => value.cast<x0.Multimedia>(),
    typeOf<Set<x0.Multimedia>>(): (value) => value.cast<x0.Multimedia>(),
    typeOf<List<x0.Legacy>>(): (value) => value.cast<x0.Legacy>(),
    typeOf<Set<x0.Legacy>>(): (value) => value.cast<x0.Legacy>(),
    typeOf<List<x0.Headline>>(): (value) => value.cast<x0.Headline>(),
    typeOf<Set<x0.Headline>>(): (value) => value.cast<x0.Headline>(),
    typeOf<List<x0.Keywords>>(): (value) => value.cast<x0.Keywords>(),
    typeOf<Set<x0.Keywords>>(): (value) => value.cast<x0.Keywords>(),
    typeOf<List<x0.Byline>>(): (value) => value.cast<x0.Byline>(),
    typeOf<Set<x0.Byline>>(): (value) => value.cast<x0.Byline>(),
    typeOf<List<x0.Meta>>(): (value) => value.cast<x0.Meta>(),
    typeOf<Set<x0.Meta>>(): (value) => value.cast<x0.Meta>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, allArticleBoGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}