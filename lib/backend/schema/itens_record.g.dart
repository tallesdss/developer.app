// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itens_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItensRecord> _$itensRecordSerializer = new _$ItensRecordSerializer();

class _$ItensRecordSerializer implements StructuredSerializer<ItensRecord> {
  @override
  final Iterable<Type> types = const [ItensRecord, _$ItensRecord];
  @override
  final String wireName = 'ItensRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ItensRecord object,
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
    value = object.video;
    if (value != null) {
      result
        ..add('video')
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cat;
    if (value != null) {
      result
        ..add('cat')
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
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
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
  ItensRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItensRecordBuilder();

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
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descri':
          result.descri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'cat':
          result.cat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preparo':
          result.preparo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
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

class _$ItensRecord extends ItensRecord {
  @override
  final String imagem;
  @override
  final String video;
  @override
  final String descri;
  @override
  final DateTime data;
  @override
  final String cat;
  @override
  final String preparo;
  @override
  final String nome;
  @override
  final DocumentReference<Object> reference;

  factory _$ItensRecord([void Function(ItensRecordBuilder) updates]) =>
      (new ItensRecordBuilder()..update(updates))._build();

  _$ItensRecord._(
      {this.imagem,
      this.video,
      this.descri,
      this.data,
      this.cat,
      this.preparo,
      this.nome,
      this.reference})
      : super._();

  @override
  ItensRecord rebuild(void Function(ItensRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItensRecordBuilder toBuilder() => new ItensRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItensRecord &&
        imagem == other.imagem &&
        video == other.video &&
        descri == other.descri &&
        data == other.data &&
        cat == other.cat &&
        preparo == other.preparo &&
        nome == other.nome &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, imagem.hashCode), video.hashCode),
                            descri.hashCode),
                        data.hashCode),
                    cat.hashCode),
                preparo.hashCode),
            nome.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItensRecord')
          ..add('imagem', imagem)
          ..add('video', video)
          ..add('descri', descri)
          ..add('data', data)
          ..add('cat', cat)
          ..add('preparo', preparo)
          ..add('nome', nome)
          ..add('reference', reference))
        .toString();
  }
}

class ItensRecordBuilder implements Builder<ItensRecord, ItensRecordBuilder> {
  _$ItensRecord _$v;

  String _imagem;
  String get imagem => _$this._imagem;
  set imagem(String imagem) => _$this._imagem = imagem;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _descri;
  String get descri => _$this._descri;
  set descri(String descri) => _$this._descri = descri;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _cat;
  String get cat => _$this._cat;
  set cat(String cat) => _$this._cat = cat;

  String _preparo;
  String get preparo => _$this._preparo;
  set preparo(String preparo) => _$this._preparo = preparo;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ItensRecordBuilder() {
    ItensRecord._initializeBuilder(this);
  }

  ItensRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagem = $v.imagem;
      _video = $v.video;
      _descri = $v.descri;
      _data = $v.data;
      _cat = $v.cat;
      _preparo = $v.preparo;
      _nome = $v.nome;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItensRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItensRecord;
  }

  @override
  void update(void Function(ItensRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ItensRecord build() => _build();

  _$ItensRecord _build() {
    final _$result = _$v ??
        new _$ItensRecord._(
            imagem: imagem,
            video: video,
            descri: descri,
            data: data,
            cat: cat,
            preparo: preparo,
            nome: nome,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
