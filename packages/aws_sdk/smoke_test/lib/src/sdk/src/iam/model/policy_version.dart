// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.policy_version; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_version.g.dart';

/// Contains information about a version of a managed policy.
///
/// This data type is used as a response element in the CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and GetAccountAuthorizationDetails operations.
///
/// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
abstract class PolicyVersion
    with _i1.AWSEquatable<PolicyVersion>
    implements Built<PolicyVersion, PolicyVersionBuilder> {
  /// Contains information about a version of a managed policy.
  ///
  /// This data type is used as a response element in the CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and GetAccountAuthorizationDetails operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyVersion({
    String? document,
    String? versionId,
    bool? isDefaultVersion,
    DateTime? createDate,
  }) {
    return _$PolicyVersion._(
      document: document,
      versionId: versionId,
      isDefaultVersion: isDefaultVersion,
      createDate: createDate,
    );
  }

  /// Contains information about a version of a managed policy.
  ///
  /// This data type is used as a response element in the CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and GetAccountAuthorizationDetails operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyVersion.build([void Function(PolicyVersionBuilder) updates]) =
      _$PolicyVersion;

  const PolicyVersion._();

  static const List<_i2.SmithySerializer> serializers = [
    PolicyVersionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyVersionBuilder b) {}

  /// The policy document.
  ///
  /// The policy document is returned in the response to the GetPolicyVersion and GetAccountAuthorizationDetails operations. It is not returned in the response to the CreatePolicyVersion or ListPolicyVersions operations.
  ///
  /// The policy document returned in this structure is URL-encoded compliant with [RFC 3986](https://tools.ietf.org/html/rfc3986). You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the `decode` method of the `java.net.URLDecoder` utility class in the Java SDK. Other languages and SDKs provide similar functionality.
  String? get document;

  /// The identifier for the policy version.
  ///
  /// Policy version identifiers always begin with `v` (always lowercase). When a policy is created, the first policy version is `v1`.
  String? get versionId;

  /// Specifies whether the policy version is set as the policy's default version.
  bool? get isDefaultVersion;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the policy version was created.
  DateTime? get createDate;
  @override
  List<Object?> get props => [
        document,
        versionId,
        isDefaultVersion,
        createDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyVersion');
    helper.add(
      'document',
      document,
    );
    helper.add(
      'versionId',
      versionId,
    );
    helper.add(
      'isDefaultVersion',
      isDefaultVersion,
    );
    helper.add(
      'createDate',
      createDate,
    );
    return helper.toString();
  }
}

class PolicyVersionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyVersion> {
  const PolicyVersionAwsQuerySerializer() : super('PolicyVersion');

  @override
  Iterable<Type> get types => const [
        PolicyVersion,
        _$PolicyVersion,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyVersion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyVersionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Document':
          if (value != null) {
            result.document = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsDefaultVersion':
          if (value != null) {
            result.isDefaultVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'CreateDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as PolicyVersion);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PolicyVersionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.document != null) {
      result
        ..add(const _i2.XmlElementName('Document'))
        ..add(serializers.serialize(
          payload.document!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i2.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isDefaultVersion != null) {
      result
        ..add(const _i2.XmlElementName('IsDefaultVersion'))
        ..add(serializers.serialize(
          payload.isDefaultVersion!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i2.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}