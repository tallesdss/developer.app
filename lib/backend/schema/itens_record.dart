import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'itens_record.g.dart';

abstract class ItensRecord implements Built<ItensRecord, ItensRecordBuilder> {
  static Serializer<ItensRecord> get serializer => _$itensRecordSerializer;

  @nullable
  String get imagem;

  @nullable
  String get video;

  @nullable
  String get descri;

  @nullable
  DateTime get data;

  @nullable
  String get cat;

  @nullable
  String get preparo;

  @nullable
  String get nome;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ItensRecordBuilder builder) => builder
    ..imagem = ''
    ..video = ''
    ..descri = ''
    ..cat = ''
    ..preparo = ''
    ..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Itens');

  static Stream<ItensRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ItensRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ItensRecord._();
  factory ItensRecord([void Function(ItensRecordBuilder) updates]) =
      _$ItensRecord;

  static ItensRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createItensRecordData({
  String imagem,
  String video,
  String descri,
  DateTime data,
  String cat,
  String preparo,
  String nome,
}) =>
    serializers.toFirestore(
        ItensRecord.serializer,
        ItensRecord((i) => i
          ..imagem = imagem
          ..video = video
          ..descri = descri
          ..data = data
          ..cat = cat
          ..preparo = preparo
          ..nome = nome));
