//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiCoreV1TopologySelectorLabelRequirement {
  /// Returns a new [IoK8sApiCoreV1TopologySelectorLabelRequirement] instance.
  IoK8sApiCoreV1TopologySelectorLabelRequirement({
    required this.key,
    this.values = const [],
  });

  /// The label key that the selector applies to.
  String key;

  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  List<String> values;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1TopologySelectorLabelRequirement &&
          other.key == key &&
          other.values == values;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (key.hashCode) + (values.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1TopologySelectorLabelRequirement[key=$key, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'key'] = key;
    json[r'values'] = values;
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1TopologySelectorLabelRequirement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1TopologySelectorLabelRequirement? fromJson(
      dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1TopologySelectorLabelRequirement[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1TopologySelectorLabelRequirement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1TopologySelectorLabelRequirement(
        key: mapValueOfType<String>(json, r'key')!,
        values: json[r'values'] is List
            ? (json[r'values'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1TopologySelectorLabelRequirement>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1TopologySelectorLabelRequirement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value =
            IoK8sApiCoreV1TopologySelectorLabelRequirement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1TopologySelectorLabelRequirement>
      mapFromJson(dynamic json) {
    final map = <String, IoK8sApiCoreV1TopologySelectorLabelRequirement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1TopologySelectorLabelRequirement.fromJson(
            entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1TopologySelectorLabelRequirement-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1TopologySelectorLabelRequirement>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map =
        <String, List<IoK8sApiCoreV1TopologySelectorLabelRequirement>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoK8sApiCoreV1TopologySelectorLabelRequirement.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'values',
  };
}
