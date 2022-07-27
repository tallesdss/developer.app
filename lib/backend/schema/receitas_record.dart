import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'receitas_record.g.dart';

abstract class ReceitasRecord
    implements Built<ReceitasRecord, ReceitasRecordBuilder> {
  static Serializer<ReceitasRecord> get serializer =>
      _$receitasRecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get descri;

  @nullable
  String get preparo;

  @nullable
  DateTime get data;

  @nullable
  String get imagem;

  @nullable
  String get cat;

  @nullable
  String get video;

  @nullable
  String get preparo2;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReceitasRecordBuilder builder) => builder
    ..nome = ''
    ..descri = ''
    ..preparo = ''
    ..imagem = ''
    ..cat = ''
    ..video = ''
    ..preparo2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Receitas');

  static Stream<ReceitasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReceitasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReceitasRecord._();
  factory ReceitasRecord([void Function(ReceitasRecordBuilder) updates]) =
      _$ReceitasRecord;

  static ReceitasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReceitasRecordData({
  String nome,
  String descri,
  String preparo,
  DateTime data,
  String imagem,
  String cat,
  String video,
  String preparo2,
}) =>
    serializers.toFirestore(
        ReceitasRecord.serializer,
        ReceitasRecord((r) => r
          ..nome = nome
          ..descri = descri
          ..preparo = preparo
          ..data = data
          ..imagem = imagem
          ..cat = cat
          ..video = video
          ..preparo2 = preparo2));
