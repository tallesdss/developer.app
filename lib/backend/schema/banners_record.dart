import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'banners_record.g.dart';

abstract class BannersRecord
    implements Built<BannersRecord, BannersRecordBuilder> {
  static Serializer<BannersRecord> get serializer => _$bannersRecordSerializer;

  @nullable
  String get home;

  @nullable
  String get logo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BannersRecordBuilder builder) => builder
    ..home = ''
    ..logo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Banners');

  static Stream<BannersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BannersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BannersRecord._();
  factory BannersRecord([void Function(BannersRecordBuilder) updates]) =
      _$BannersRecord;

  static BannersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBannersRecordData({
  String home,
  String logo,
}) =>
    serializers.toFirestore(
        BannersRecord.serializer,
        BannersRecord((b) => b
          ..home = home
          ..logo = logo));
