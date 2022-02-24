//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IoK8sApiCoreV1StorageOSVolumeSource {
  /// Returns a new [IoK8sApiCoreV1StorageOSVolumeSource] instance.
  IoK8sApiCoreV1StorageOSVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    this.volumeName,
    this.volumeNamespace,
  });

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fsType;

  /// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
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
  IoK8sApiCoreV1LocalObjectReference? secretRef;

  /// VolumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volumeName;

  /// VolumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volumeNamespace;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IoK8sApiCoreV1StorageOSVolumeSource &&
          other.fsType == fsType &&
          other.readOnly == readOnly &&
          other.secretRef == secretRef &&
          other.volumeName == volumeName &&
          other.volumeNamespace == volumeNamespace;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (fsType == null ? 0 : fsType!.hashCode) +
      (readOnly == null ? 0 : readOnly!.hashCode) +
      (secretRef == null ? 0 : secretRef!.hashCode) +
      (volumeName == null ? 0 : volumeName!.hashCode) +
      (volumeNamespace == null ? 0 : volumeNamespace!.hashCode);

  @override
  String toString() =>
      'IoK8sApiCoreV1StorageOSVolumeSource[fsType=$fsType, readOnly=$readOnly, secretRef=$secretRef, volumeName=$volumeName, volumeNamespace=$volumeNamespace]';

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
    if (volumeName != null) {
      json[r'volumeName'] = volumeName;
    }
    if (volumeNamespace != null) {
      json[r'volumeNamespace'] = volumeNamespace;
    }
    return json;
  }

  /// Returns a new [IoK8sApiCoreV1StorageOSVolumeSource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IoK8sApiCoreV1StorageOSVolumeSource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "IoK8sApiCoreV1StorageOSVolumeSource[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "IoK8sApiCoreV1StorageOSVolumeSource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IoK8sApiCoreV1StorageOSVolumeSource(
        fsType: mapValueOfType<String>(json, r'fsType'),
        readOnly: mapValueOfType<bool>(json, r'readOnly'),
        secretRef:
            IoK8sApiCoreV1LocalObjectReference.fromJson(json[r'secretRef']),
        volumeName: mapValueOfType<String>(json, r'volumeName'),
        volumeNamespace: mapValueOfType<String>(json, r'volumeNamespace'),
      );
    }
    return null;
  }

  static List<IoK8sApiCoreV1StorageOSVolumeSource>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <IoK8sApiCoreV1StorageOSVolumeSource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IoK8sApiCoreV1StorageOSVolumeSource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IoK8sApiCoreV1StorageOSVolumeSource> mapFromJson(
      dynamic json) {
    final map = <String, IoK8sApiCoreV1StorageOSVolumeSource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1StorageOSVolumeSource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IoK8sApiCoreV1StorageOSVolumeSource-objects as value to a dart map
  static Map<String, List<IoK8sApiCoreV1StorageOSVolumeSource>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<IoK8sApiCoreV1StorageOSVolumeSource>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IoK8sApiCoreV1StorageOSVolumeSource.listFromJson(
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
