//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiCoreV1ReplicationControllerStatus {
  /// Returns a new [IoK8sApiCoreV1ReplicationControllerStatus] instance.
  IoK8sApiCoreV1ReplicationControllerStatus({
    this.availableReplicas,
    this.conditions = const [],
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
  });

  /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableReplicas;

  /// Represents the latest available observations of a replication controller's current state.
  List<IoK8sApiCoreV1ReplicationControllerCondition> conditions;

  /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fullyLabeledReplicas;

  /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? observedGeneration;

  /// The number of ready replicas for this replication controller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? readyReplicas;

  /// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  int replicas;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1ReplicationControllerStatus &&
          other.availableReplicas == availableReplicas &&
          other.conditions == conditions &&
          other.fullyLabeledReplicas == fullyLabeledReplicas &&
          other.observedGeneration == observedGeneration &&
          other.readyReplicas == readyReplicas &&
          other.replicas == replicas;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (availableReplicas == null ? 0 : availableReplicas!.hashCode) +
      (conditions.hashCode) +
      (fullyLabeledReplicas == null ? 0 : fullyLabeledReplicas!.hashCode) +
      (observedGeneration == null ? 0 : observedGeneration!.hashCode) +
      (readyReplicas == null ? 0 : readyReplicas!.hashCode) +
      (replicas.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1ReplicationControllerStatus[availableReplicas=$availableReplicas, conditions=$conditions, fullyLabeledReplicas=$fullyLabeledReplicas, observedGeneration=$observedGeneration, readyReplicas=$readyReplicas, replicas=$replicas]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (availableReplicas != null) {
      json[r'availableReplicas'] = availableReplicas;
    }
    json[r'conditions'] = conditions;
    if (fullyLabeledReplicas != null) {
      json[r'fullyLabeledReplicas'] = fullyLabeledReplicas;
    }
    if (observedGeneration != null) {
      json[r'observedGeneration'] = observedGeneration;
    }
    if (readyReplicas != null) {
      json[r'readyReplicas'] = readyReplicas;
    }
    json[r'replicas'] = replicas;
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1ReplicationControllerStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1ReplicationControllerStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1ReplicationControllerStatus[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1ReplicationControllerStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1ReplicationControllerStatus(
        availableReplicas: mapValueOfType<int>(json, r'availableReplicas'),
        conditions: IoK8sApiCoreV1ReplicationControllerCondition.listFromJson(
                json[r'conditions']) ??
            const [],
        fullyLabeledReplicas:
            mapValueOfType<int>(json, r'fullyLabeledReplicas'),
        observedGeneration: mapValueOfType<int>(json, r'observedGeneration'),
        readyReplicas: mapValueOfType<int>(json, r'readyReplicas'),
        replicas: mapValueOfType<int>(json, r'replicas')!,
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1ReplicationControllerStatus>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1ReplicationControllerStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1ReplicationControllerStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1ReplicationControllerStatus> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiCoreV1ReplicationControllerStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoK8sApiCoreV1ReplicationControllerStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1ReplicationControllerStatus-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1ReplicationControllerStatus>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiCoreV1ReplicationControllerStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1ReplicationControllerStatus.listFromJson(
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
    'replicas',
  };
}
