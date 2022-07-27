// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sobrenos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SobrenosRecord> _$sobrenosRecordSerializer =
    new _$SobrenosRecordSerializer();

class _$SobrenosRecordSerializer
    implements StructuredSerializer<SobrenosRecord> {
  @override
  final Iterable<Type> types = const [SobrenosRecord, _$SobrenosRecord];
  @override
  final String wireName = 'SobrenosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SobrenosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.imagem;
    if (value != null) {
      result
        ..add('imagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descri;
    if (value != null) {
      result
        ..add('descri')
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
  SobrenosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SobrenosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'imagem':
          result.imagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descri':
          result.descri = serializers.deserialize(value,
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

class _$SobrenosRecord extends SobrenosRecord {
  @override
  final String imagem;
  @override
  final String descri;
  @override
  final DocumentReference<Object> reference;

  factory _$SobrenosRecord([void Function(SobrenosRecordBuilder) updates]) =>
      (new SobrenosRecordBuilder()..update(updates))._build();

  _$SobrenosRecord._({this.imagem, this.descri, this.reference}) : super._();

  @override
  SobrenosRecord rebuild(void Function(SobrenosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SobrenosRecordBuilder toBuilder() =>
      new SobrenosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SobrenosRecord &&
        imagem == other.imagem &&
        descri == other.descri &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, imagem.hashCode), descri.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SobrenosRecord')
          ..add('imagem', imagem)
          ..add('descri', descri)
          ..add('reference', reference))
        .toString();
  }
}

class SobrenosRecordBuilder
    implements Builder<SobrenosRecord, SobrenosRecordBuilder> {
  _$SobrenosRecord _$v;

  String _imagem;
  String get imagem => _$this._imagem;
  set imagem(String imagem) => _$this._imagem = imagem;

  String _descri;
  String get descri => _$this._descri;
  set descri(String descri) => _$this._descri = descri;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SobrenosRecordBuilder() {
    SobrenosRecord._initializeBuilder(this);
  }

  SobrenosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagem = $v.imagem;
      _descri = $v.descri;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SobrenosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SobrenosRecord;
  }

  @override
  void update(void Function(SobrenosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  SobrenosRecord build() => _build();

  _$SobrenosRecord _build() {
    final _$result = _$v ??
        new _$SobrenosRecord._(
            imagem: imagem, descri: descri, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
