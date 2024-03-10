// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Socks {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get assetPath => throw _privateConstructorUsedError;
  bool get isMatched => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocksCopyWith<Socks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocksCopyWith<$Res> {
  factory $SocksCopyWith(Socks value, $Res Function(Socks) then) =
      _$SocksCopyWithImpl<$Res, Socks>;
  @useResult
  $Res call({int id, String type, String assetPath, bool isMatched, int level});
}

/// @nodoc
class _$SocksCopyWithImpl<$Res, $Val extends Socks>
    implements $SocksCopyWith<$Res> {
  _$SocksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? assetPath = null,
    Object? isMatched = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      assetPath: null == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocksImplCopyWith<$Res> implements $SocksCopyWith<$Res> {
  factory _$$SocksImplCopyWith(
          _$SocksImpl value, $Res Function(_$SocksImpl) then) =
      __$$SocksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type, String assetPath, bool isMatched, int level});
}

/// @nodoc
class __$$SocksImplCopyWithImpl<$Res>
    extends _$SocksCopyWithImpl<$Res, _$SocksImpl>
    implements _$$SocksImplCopyWith<$Res> {
  __$$SocksImplCopyWithImpl(
      _$SocksImpl _value, $Res Function(_$SocksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? assetPath = null,
    Object? isMatched = null,
    Object? level = null,
  }) {
    return _then(_$SocksImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      assetPath: null == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String,
      isMatched: null == isMatched
          ? _value.isMatched
          : isMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SocksImpl implements _Socks {
  const _$SocksImpl(
      {required this.id,
      required this.type,
      required this.assetPath,
      required this.isMatched,
      required this.level});

  @override
  final int id;
  @override
  final String type;
  @override
  final String assetPath;
  @override
  final bool isMatched;
  @override
  final int level;

  @override
  String toString() {
    return 'Socks(id: $id, type: $type, assetPath: $assetPath, isMatched: $isMatched, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocksImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.isMatched, isMatched) ||
                other.isMatched == isMatched) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, assetPath, isMatched, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocksImplCopyWith<_$SocksImpl> get copyWith =>
      __$$SocksImplCopyWithImpl<_$SocksImpl>(this, _$identity);
}

abstract class _Socks implements Socks {
  const factory _Socks(
      {required final int id,
      required final String type,
      required final String assetPath,
      required final bool isMatched,
      required final int level}) = _$SocksImpl;

  @override
  int get id;
  @override
  String get type;
  @override
  String get assetPath;
  @override
  bool get isMatched;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$SocksImplCopyWith<_$SocksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
