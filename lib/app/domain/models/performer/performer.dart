import 'package:freezed_annotation/freezed_annotation.dart';

import '../../typedefs.dart';

part 'performer.freezed.dart';
part 'performer.g.dart';

@freezed
sealed class Performer with _$Performer {
  factory Performer({
    required int id,
    required String name,
    required double popularity,
    required int gender,
    required String? character,
    @JsonKey(name: 'original_name') required String originalName,
    @JsonKey(name: 'known_for_department') required String department,
    @JsonKey(name: 'profile_path') required String profilePath,
  }) = _Performer;

  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);
}

List<Performer> getPerformerList(List<Json> list) {
  return list
      .where(
        (e) =>
            e['known_for_department'] == 'Acting' && e['profile_path'] != null,
      )
      .map(
        (item) => Performer.fromJson(item),
      )
      .toList();
}
