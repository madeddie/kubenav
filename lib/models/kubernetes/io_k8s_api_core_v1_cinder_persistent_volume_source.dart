//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiCoreV1CinderPersistentVolumeSource {
  /// Returns a new [IoK8sApiCoreV1CinderPersistentVolumeSource] instance.
  IoK8sApiCoreV1CinderPersistentVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    required this.volumeID,
  });

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fsType;

  /// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readOnly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  IoK8sApiCoreV1SecretReference? secretRef;

  /// volume id used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  String volumeID;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1CinderPersistentVolumeSource &&
          other.fsType == fsType &&
          other.readOnly == readOnly &&
          other.secretRef == secretRef &&
          other.volumeID == volumeID;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (fsType == null ? 0 : fsType!.hashCode) +
      (readOnly == null ? 0 : readOnly!.hashCode) +
      (secretRef == null ? 0 : secretRef!.hashCode) +
      (volumeID.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1CinderPersistentVolumeSource[fsType=$fsType, readOnly=$readOnly, secretRef=$secretRef, volumeID=$volumeID]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fsType != null) {
      json[r'fsType'] = fsType;
    }
    if (readOnly != null) {
      json[r'readOnly'] = readOnly;
    }
    if (secretRef != null) {
      json[r'secretRef'] = secretRef;
    }
    json[r'volumeID'] = volumeID;
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1CinderPersistentVolumeSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1CinderPersistentVolumeSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1CinderPersistentVolumeSource[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1CinderPersistentVolumeSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1CinderPersistentVolumeSource(
        fsType: mapValueOfType<String>(json, r'fsType'),
        readOnly: mapValueOfType<bool>(json, r'readOnly'),
        secretRef: IoK8sApiCoreV1SecretReference.fromJson(json[r'secretRef']),
        volumeID: mapValueOfType<String>(json, r'volumeID')!,
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1CinderPersistentVolumeSource>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1CinderPersistentVolumeSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1CinderPersistentVolumeSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1CinderPersistentVolumeSource> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiCoreV1CinderPersistentVolumeSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value =
            IoK8sApiCoreV1CinderPersistentVolumeSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1CinderPersistentVolumeSource-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1CinderPersistentVolumeSource>>
      mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiCoreV1CinderPersistentVolumeSource>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1CinderPersistentVolumeSource.listFromJson(
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
    'volumeID',
  };
}
