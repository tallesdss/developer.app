import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sobrenos_record.g.dart';

abstract class SobrenosRecord
    implements Built<SobrenosRecord, SobrenosRecordBuilder> {
  static Serializer<SobrenosRecord> get serializer =>
      _$sobrenosRecordSerializer;

  @nullable
  String get imagem;

  @nullable
  String get descri;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SobrenosRecordBuilder builder) => builder
    ..imagem = ''
    ..descri = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sobrenos');

  static Stream<SobrenosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SobrenosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SobrenosRecord._();
  factory SobrenosRecord([void Function(SobrenosRecordBuilder) updates]) =
      _$SobrenosRecord;

  static SobrenosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSobrenosRecordData({
  String imagem,
  String descri,
}) =>
    serializers.toFirestore(
        SobrenosRecord.serializer,
        SobrenosRecord((s) => s
          ..imagem = imagem
          ..descri = descri));
