// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destaque_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DestaqueRecord> _$destaqueRecordSerializer =
    new _$DestaqueRecordSerializer();

class _$DestaqueRecordSerializer
    implements StructuredSerializer<DestaqueRecord> {
  @override
  final Iterable<Type> types = const [DestaqueRecord, _$DestaqueRecord];
  @override
  final String wireName = 'DestaqueRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DestaqueRecord object,
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
    value = object.cat;
    if (value != null) {
      result
        ..add('cat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preparo;
    if (value != null) {
      result
        ..add('preparo')
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
  DestaqueRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DestaqueRecordBuilder();

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
        case 'cat':
          result.cat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preparo':
          result.preparo = serializers.deserialize(value,
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

class _$DestaqueRecord extends DestaqueRecord {
  @override
  final String imagem;
  @override
  final String descri;
  @override
  final String cat;
  @override
  final DateTime data;
  @override
  final String video;
  @override
  final String nome;
  @override
  final String preparo;
  @override
  final DocumentReference<Object> reference;

  factory _$DestaqueRecord([void Function(DestaqueRecordBuilder) updates]) =>
      (new DestaqueRecordBuilder()..update(updates))._build();

  _$DestaqueRecord._(
      {this.imagem,
      this.descri,
      this.cat,
      this.data,
      this.video,
      this.nome,
      this.preparo,
      this.reference})
      : super._();

  @override
  DestaqueRecord rebuild(void Function(DestaqueRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestaqueRecordBuilder toBuilder() =>
      new DestaqueRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestaqueRecord &&
        imagem == other.imagem &&
        descri == other.descri &&
        cat == other.cat &&
        data == other.data &&
        video == other.video &&
        nome == other.nome &&
        preparo == other.preparo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, imagem.hashCode), descri.hashCode),
                            cat.hashCode),
                        data.hashCode),
                    video.hashCode),
                nome.hashCode),
            preparo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DestaqueRecord')
          ..add('imagem', imagem)
          ..add('descri', descri)
          ..add('cat', cat)
          ..add('data', data)
          ..add('video', video)
          ..add('nome', nome)
          ..add('preparo', preparo)
          ..add('reference', reference))
        .toString();
  }
}

class DestaqueRecordBuilder
    implements Builder<DestaqueRecord, DestaqueRecordBuilder> {
  _$DestaqueRecord _$v;

  String _imagem;
  String get imagem => _$this._imagem;
  set imagem(String imagem) => _$this._imagem = imagem;

  String _descri;
  String get descri => _$this._descri;
  set descri(String descri) => _$this._descri = descri;

  String _cat;
  String get cat => _$this._cat;
  set cat(String cat) => _$this._cat = cat;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _preparo;
  String get preparo => _$this._preparo;
  set preparo(String preparo) => _$this._preparo = preparo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DestaqueRecordBuilder() {
    DestaqueRecord._initializeBuilder(this);
  }

  DestaqueRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagem = $v.imagem;
      _descri = $v.descri;
      _cat = $v.cat;
      _data = $v.data;
      _video = $v.video;
      _nome = $v.nome;
      _preparo = $v.preparo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DestaqueRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestaqueRecord;
  }

  @override
  void update(void Function(DestaqueRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  DestaqueRecord build() => _build();

  _$DestaqueRecord _build() {
    final _$result = _$v ??
        new _$DestaqueRecord._(
            imagem: imagem,
            descri: descri,
            cat: cat,
            data: data,
            video: video,
            nome: nome,
            preparo: preparo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
