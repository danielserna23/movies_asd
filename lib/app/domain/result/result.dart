import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<E, T> with _$Result<E, T> {
  const factory Result.success(T data) = Success;
  const factory Result.failure(E error) = Failure;
}
