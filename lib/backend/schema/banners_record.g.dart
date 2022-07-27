// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BannersRecord> _$bannersRecordSerializer =
    new _$BannersRecordSerializer();

class _$BannersRecordSerializer implements StructuredSerializer<BannersRecord> {
  @override
  final Iterable<Type> types = const [BannersRecord, _$BannersRecord];
  @override
  final String wireName = 'BannersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BannersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.home;
    if (value != null) {
      result
        ..add('home')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  BannersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BannersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'home':
          result.home = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$BannersRecord extends BannersRecord {
  @override
  final String home;
  @override
  final String logo;
  @override
  final DocumentReference<Object> reference;

  factory _$BannersRecord([void Function(BannersRecordBuilder) updates]) =>
      (new BannersRecordBuilder()..update(updates))._build();

  _$BannersRecord._({this.home, this.logo, this.reference}) : super._();

  @override
  BannersRecord rebuild(void Function(BannersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BannersRecordBuilder toBuilder() => new BannersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BannersRecord &&
        home == other.home &&
        logo == other.logo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, home.hashCode), logo.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BannersRecord')
          ..add('home', home)
          ..add('logo', logo)
          ..add('reference', reference))
        .toString();
  }
}

class BannersRecordBuilder
    implements Builder<BannersRecord, BannersRecordBuilder> {
  _$BannersRecord _$v;

  String _home;
  String get home => _$this._home;
  set home(String home) => _$this._home = home;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BannersRecordBuilder() {
    BannersRecord._initializeBuilder(this);
  }

  BannersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _home = $v.home;
      _logo = $v.logo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BannersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BannersRecord;
  }

  @override
  void update(void Function(BannersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  BannersRecord build() => _build();

  _$BannersRecord _build() {
    final _$result = _$v ??
        new _$BannersRecord._(home: home, logo: logo, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
