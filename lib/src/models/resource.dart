import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource.freezed.dart';

@freezed
class Resource with _$Resource {
  factory Resource({
    /// File name of the resource (numerical)
    required int fileName,

    // Actual resource name string
    required String resourceName,
  }) = _Resource;
}
