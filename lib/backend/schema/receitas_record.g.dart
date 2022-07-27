// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receitas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReceitasRecord> _$receitasRecordSerializer =
    new _$ReceitasRecordSerializer();

class _$ReceitasRecordSerializer
    implements StructuredSerializer<ReceitasRecord> {
  @override
  final Iterable<Type> types = const [ReceitasRecord, _$ReceitasRecord];
  @override
  final String wireName = 'ReceitasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ReceitasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
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
    value = object.preparo;
    if (value != null) {
      result
        ..add('preparo')
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
    value = object.imagem;
    if (value != null) {
      result
        ..add('imagem')
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
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preparo2;
    if (value != null) {
      result
        ..add('preparo2')
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
  ReceitasRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReceitasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descri':
          result.descri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preparo':
          result.preparo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'imagem':
          result.imagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cat':
          result.cat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'preparo2':
          result.preparo2 = serializers.deserialize(value,
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

class _$ReceitasRecord extends ReceitasRecord {
  @override
  final String nome;
  @override
  final String descri;
  @override
  final String preparo;
  @override
  final DateTime data;
  @override
  final String imagem;
  @override
  final String cat;
  @override
  final String video;
  @override
  final String preparo2;
  @override
  final DocumentReference<Object> reference;

  factory _$ReceitasRecord([void Function(ReceitasRecordBuilder) updates]) =>
      (new ReceitasRecordBuilder()..update(updates))._build();

  _$ReceitasRecord._(
      {this.nome,
      this.descri,
      this.preparo,
      this.data,
      this.imagem,
      this.cat,
      this.video,
      this.preparo2,
      this.reference})
      : super._();

  @override
  ReceitasRecord rebuild(void Function(ReceitasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceitasRecordBuilder toBuilder() =>
      new ReceitasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceitasRecord &&
        nome == other.nome &&
        descri == other.descri &&
        preparo == other.preparo &&
        data == other.data &&
        imagem == other.imagem &&
        cat == other.cat &&
        video == other.video &&
        preparo2 == other.preparo2 &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, nome.hashCode), descri.hashCode),
                                preparo.hashCode),
                            data.hashCode),
                        imagem.hashCode),
                    cat.hashCode),
                video.hashCode),
            preparo2.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceitasRecord')
          ..add('nome', nome)
          ..add('descri', descri)
          ..add('preparo', preparo)
          ..add('data', data)
          ..add('imagem', imagem)
          ..add('cat', cat)
          ..add('video', video)
          ..add('preparo2', preparo2)
          ..add('reference', reference))
        .toString();
  }
}

class ReceitasRecordBuilder
    implements Builder<ReceitasRecord, ReceitasRecordBuilder> {
  _$ReceitasRecord _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _descri;
  String get descri => _$this._descri;
  set descri(String descri) => _$this._descri = descri;

  String _preparo;
  String get preparo => _$this._preparo;
  set preparo(String preparo) => _$this._preparo = preparo;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _imagem;
  String get imagem => _$this._imagem;
  set imagem(String imagem) => _$this._imagem = imagem;

  String _cat;
  String get cat => _$this._cat;
  set cat(String cat) => _$this._cat = cat;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _preparo2;
  String get preparo2 => _$this._preparo2;
  set preparo2(String preparo2) => _$this._preparo2 = preparo2;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ReceitasRecordBuilder() {
    ReceitasRecord._initializeBuilder(this);
  }

  ReceitasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _descri = $v.descri;
      _preparo = $v.preparo;
      _data = $v.data;
      _imagem = $v.imagem;
      _cat = $v.cat;
      _video = $v.video;
      _preparo2 = $v.preparo2;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceitasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReceitasRecord;
  }

  @override
  void update(void Function(ReceitasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceitasRecord build() => _build();

  _$ReceitasRecord _build() {
    final _$result = _$v ??
        new _$ReceitasRecord._(
            nome: nome,
            descri: descri,
            preparo: preparo,
            data: data,
            imagem: imagem,
            cat: cat,
            video: video,
            preparo2: preparo2,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
