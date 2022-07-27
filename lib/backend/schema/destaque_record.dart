import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'destaque_record.g.dart';

abstract class DestaqueRecord
    implements Built<DestaqueRecord, DestaqueRecordBuilder> {
  static Serializer<DestaqueRecord> get serializer =>
      _$destaqueRecordSerializer;

  @nullable
  String get imagem;

  @nullable
  String get descri;

  @nullable
  String get cat;

  @nullable
  DateTime get data;

  @nullable
  String get video;

  @nullable
  String get nome;

  @nullable
  String get preparo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DestaqueRecordBuilder builder) => builder
    ..imagem = ''
    ..descri = ''
    ..cat = ''
    ..video = ''
    ..nome = ''
    ..preparo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Destaque');

  static Stream<DestaqueRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DestaqueRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DestaqueRecord._();
  factory DestaqueRecord([void Function(DestaqueRecordBuilder) updates]) =
      _$DestaqueRecord;

  static DestaqueRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDestaqueRecordData({
  String imagem,
  String descri,
  String cat,
  DateTime data,
  String video,
  String nome,
  String preparo,
}) =>
    serializers.toFirestore(
        DestaqueRecord.serializer,
        DestaqueRecord((d) => d
          ..imagem = imagem
          ..descri = descri
          ..cat = cat
          ..data = data
          ..video = video
          ..nome = nome
          ..preparo = preparo));
