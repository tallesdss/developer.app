// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aulas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AulasRecord> _$aulasRecordSerializer = new _$AulasRecordSerializer();

class _$AulasRecordSerializer implements StructuredSerializer<AulasRecord> {
  @override
  final Iterable<Type> types = const [AulasRecord, _$AulasRecord];
  @override
  final String wireName = 'AulasRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AulasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.descri;
    if (value != null) {
      result
        ..add('descri')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagem;
    if (value != null) {
      result
        ..add('imagem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prof;
    if (value != null) {
      result
        ..add('prof')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tema;
    if (value != null) {
      result
        ..add('tema')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
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
    value = object.descri2;
    if (value != null) {
      result
        ..add('descri2')
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
  AulasRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AulasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'descri':
          result.descri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagem':
          result.imagem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prof':
          result.prof = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tema':
          result.tema = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'descri2':
          result.descri2 = serializers.deserialize(value,
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

class _$AulasRecord extends AulasRecord {
  @override
  final DateTime data;
  @override
  final String descri;
  @override
  final String imagem;
  @override
  final String prof;
  @override
  final String tema;
  @override
  final String titulo;
  @override
  final String video;
  @override
  final String descri2;
  @override
  final DocumentReference<Object> reference;

  factory _$AulasRecord([void Function(AulasRecordBuilder) updates]) =>
      (new AulasRecordBuilder()..update(updates))._build();

  _$AulasRecord._(
      {this.data,
      this.descri,
      this.imagem,
      this.prof,
      this.tema,
      this.titulo,
      this.video,
      this.descri2,
      this.reference})
      : super._();

  @override
  AulasRecord rebuild(void Function(AulasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AulasRecordBuilder toBuilder() => new AulasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AulasRecord &&
        data == other.data &&
        descri == other.descri &&
        imagem == other.imagem &&
        prof == other.prof &&
        tema == other.tema &&
        titulo == other.titulo &&
        video == other.video &&
        descri2 == other.descri2 &&
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
                            $jc($jc($jc(0, data.hashCode), descri.hashCode),
                                imagem.hashCode),
                            prof.hashCode),
                        tema.hashCode),
                    titulo.hashCode),
                video.hashCode),
            descri2.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AulasRecord')
          ..add('data', data)
          ..add('descri', descri)
          ..add('imagem', imagem)
          ..add('prof', prof)
          ..add('tema', tema)
          ..add('titulo', titulo)
          ..add('video', video)
          ..add('descri2', descri2)
          ..add('reference', reference))
        .toString();
  }
}

class AulasRecordBuilder implements Builder<AulasRecord, AulasRecordBuilder> {
  _$AulasRecord _$v;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _descri;
  String get descri => _$this._descri;
  set descri(String descri) => _$this._descri = descri;

  String _imagem;
  String get imagem => _$this._imagem;
  set imagem(String imagem) => _$this._imagem = imagem;

  String _prof;
  String get prof => _$this._prof;
  set prof(String prof) => _$this._prof = prof;

  String _tema;
  String get tema => _$this._tema;
  set tema(String tema) => _$this._tema = tema;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  String _descri2;
  String get descri2 => _$this._descri2;
  set descri2(String descri2) => _$this._descri2 = descri2;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AulasRecordBuilder() {
    AulasRecord._initializeBuilder(this);
  }

  AulasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _descri = $v.descri;
      _imagem = $v.imagem;
      _prof = $v.prof;
      _tema = $v.tema;
      _titulo = $v.titulo;
      _video = $v.video;
      _descri2 = $v.descri2;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AulasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AulasRecord;
  }

  @override
  void update(void Function(AulasRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  AulasRecord build() => _build();

  _$AulasRecord _build() {
    final _$result = _$v ??
        new _$AulasRecord._(
            data: data,
            descri: descri,
            imagem: imagem,
            prof: prof,
            tema: tema,
            titulo: titulo,
            video: video,
            descri2: descri2,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
