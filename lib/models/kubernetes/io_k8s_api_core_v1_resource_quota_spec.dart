//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiCoreV1ResourceQuotaSpec {
  /// Returns a new [IoK8sApiCoreV1ResourceQuotaSpec] instance.
  IoK8sApiCoreV1ResourceQuotaSpec({
    this.hard = const {},
    this.scopeSelector,
    this.scopes = const [],
  });

  /// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  Map<String, String> hard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiCoreV1ScopeSelector? scopeSelector;

  /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  List<String> scopes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1ResourceQuotaSpec &&
          other.hard == hard &&
          other.scopeSelector == scopeSelector &&
          other.scopes == scopes;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hard.hashCode) +
      (scopeSelector == null ? 0 : scopeSelector!.hashCode) +
      (scopes.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1ResourceQuotaSpec[hard=$hard, scopeSelector=$scopeSelector, scopes=$scopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'hard'] = hard;
    if (scopeSelector != null) {
      json[r'scopeSelector'] = scopeSelector;
    }
    json[r'scopes'] = scopes;
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1ResourceQuotaSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1ResourceQuotaSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1ResourceQuotaSpec[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1ResourceQuotaSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1ResourceQuotaSpec(
        hard: mapCastOfType<String, String>(json, r'hard') ?? const {},
        scopeSelector:
            IoK8sApiCoreV1ScopeSelector.fromJson(json[r'scopeSelector']),
        scopes: json[r'scopes'] is List
            ? (json[r'scopes'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1ResourceQuotaSpec>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1ResourceQuotaSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1ResourceQuotaSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1ResourceQuotaSpec> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiCoreV1ResourceQuotaSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ResourceQuotaSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1ResourceQuotaSpec-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1ResourceQuotaSpec>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiCoreV1ResourceQuotaSpec>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ResourceQuotaSpec.listFromJson(
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
