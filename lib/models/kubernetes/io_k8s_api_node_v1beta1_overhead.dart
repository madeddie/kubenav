//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiNodeV1beta1Overhead {
  /// Returns a new [IoK8sApiNodeV1beta1Overhead] instance.
  IoK8sApiNodeV1beta1Overhead({
    this.podFixed = const {},
  });

  /// PodFixed represents the fixed resource overhead associated with running a pod.
  Map<String, String> podFixed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiNodeV1beta1Overhead && other.podFixed == podFixed;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (podFixed.hashCode);

  @override
  String toString() => 'IoK8sApiNodeV1beta1Overhead[podFixed=$podFixed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'podFixed'] = podFixed;
    return json;
  }

  /// Returns a new [IoK8sApiNodeV1beta1Overhead] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiNodeV1beta1Overhead? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiNodeV1beta1Overhead[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiNodeV1beta1Overhead[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiNodeV1beta1Overhead(
        podFixed: mapCastOfType<String, String>(json, r'podFixed') ?? const {},
      );
    }
    return null;
  }

  static List<IoK8sApiNodeV1beta1Overhead>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiNodeV1beta1Overhead>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiNodeV1beta1Overhead.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiNodeV1beta1Overhead> mapFromJson(dynamic json) {
    final map = <String, IoK8sApiNodeV1beta1Overhead>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiNodeV1beta1Overhead.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiNodeV1beta1Overhead-objects as value to a dart map
  static Map<String, List<IoK8sApiNodeV1beta1Overhead>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiNodeV1beta1Overhead>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiNodeV1beta1Overhead.listFromJson(
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
  static const requiredKeys = <String>{};
}
