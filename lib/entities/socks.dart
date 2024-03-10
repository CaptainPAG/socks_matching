import 'package:freezed_annotation/freezed_annotation.dart';

part 'socks.freezed.dart';

@freezed
class Socks with _$Socks {
  const factory Socks({
    required int id,
    required String type,
    required String assetPath,
    required bool isMatched,
    required int level,
  }) = _Socks;
}
