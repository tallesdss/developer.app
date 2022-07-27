import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aulas_record.g.dart';

abstract class AulasRecord implements Built<AulasRecord, AulasRecordBuilder> {
  static Serializer<AulasRecord> get serializer => _$aulasRecordSerializer;

  @nullable
  DateTime get data;

  @nullable
  String get descri;

  @nullable
  String get imagem;

  @nullable
  String get prof;

  @nullable
  String get tema;

  @nullable
  String get titulo;

  @nullable
  String get video;

  @nullable
  String get descri2;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AulasRecordBuilder builder) => builder
    ..descri = ''
    ..imagem = ''
    ..prof = ''
    ..tema = ''
    ..titulo = ''
    ..video = ''
    ..descri2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Aulas');

  static Stream<AulasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AulasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AulasRecord._();
  factory AulasRecord([void Function(AulasRecordBuilder) updates]) =
      _$AulasRecord;

  static AulasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAulasRecordData({
  DateTime data,
  String descri,
  String imagem,
  String prof,
  String tema,
  String titulo,
  String video,
  String descri2,
}) =>
    serializers.toFirestore(
        AulasRecord.serializer,
        AulasRecord((a) => a
          ..data = data
          ..descri = descri
          ..imagem = imagem
          ..prof = prof
          ..tema = tema
          ..titulo = titulo
          ..video = video
          ..descri2 = descri2));
