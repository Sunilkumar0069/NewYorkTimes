// This file has been generated by the dart_json_mapper v2.2.13
// https://github.com/k-paxian/dart-json-mapper
// @dart = 2.12
import 'BooksBO.dart' as x0 show BooksBO, Results, Books, Isbns, BuyLinks;
import 'package:dart_json_mapper/dart_json_mapper.dart' show JsonMapper, JsonMapperAdapter, SerializationOptions, DeserializationOptions, typeOf;
// No output from reflectable, there is no `main`.
final booksBoGeneratedAdapter = JsonMapperAdapter(
  title: 'newyorktimes',
  url: 'package:newyorktimes/BO/BooksBO/BooksBO.dart',
  reflectableData: null,
  memberSymbolMap: null,
  valueDecorators: {
    typeOf<List<x0.BooksBO>>(): (value) => value.cast<x0.BooksBO>(),
    typeOf<Set<x0.BooksBO>>(): (value) => value.cast<x0.BooksBO>(),
    typeOf<List<x0.Results>>(): (value) => value.cast<x0.Results>(),
    typeOf<Set<x0.Results>>(): (value) => value.cast<x0.Results>(),
    typeOf<List<x0.Books>>(): (value) => value.cast<x0.Books>(),
    typeOf<Set<x0.Books>>(): (value) => value.cast<x0.Books>(),
    typeOf<List<x0.Isbns>>(): (value) => value.cast<x0.Isbns>(),
    typeOf<Set<x0.Isbns>>(): (value) => value.cast<x0.Isbns>(),
    typeOf<List<x0.BuyLinks>>(): (value) => value.cast<x0.BuyLinks>(),
    typeOf<Set<x0.BuyLinks>>(): (value) => value.cast<x0.BuyLinks>()
},
  enumValues: {

});

Future<JsonMapper> initializeJsonMapperAsync({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) => Future(() => initializeJsonMapper(adapters: adapters, serializationOptions: serializationOptions, deserializationOptions: deserializationOptions));

JsonMapper initializeJsonMapper({Iterable<JsonMapperAdapter> adapters = const [], SerializationOptions? serializationOptions, DeserializationOptions? deserializationOptions}) {
  JsonMapper.globalSerializationOptions = serializationOptions ?? JsonMapper.globalSerializationOptions;
  JsonMapper.globalDeserializationOptions = deserializationOptions ?? JsonMapper.globalDeserializationOptions;    
  JsonMapper.enumerateAdapters([...adapters, booksBoGeneratedAdapter], (JsonMapperAdapter adapter) {
    
    JsonMapper().useAdapter(adapter);
  });
  return JsonMapper();
}