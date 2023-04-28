// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.access_key_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'access_key_metadata.g.dart';

/// Contains information about an Amazon Web Services access key, without its secret key.
///
/// This data type is used as a response element in the ListAccessKeys operation.
abstract class AccessKeyMetadata
    with _i1.AWSEquatable<AccessKeyMetadata>
    implements Built<AccessKeyMetadata, AccessKeyMetadataBuilder> {
  /// Contains information about an Amazon Web Services access key, without its secret key.
  ///
  /// This data type is used as a response element in the ListAccessKeys operation.
  factory AccessKeyMetadata({
    String? userName,
    String? accessKeyId,
    _i2.StatusType? status,
    DateTime? createDate,
  }) {
    return _$AccessKeyMetadata._(
      userName: userName,
      accessKeyId: accessKeyId,
      status: status,
      createDate: createDate,
    );
  }

  /// Contains information about an Amazon Web Services access key, without its secret key.
  ///
  /// This data type is used as a response element in the ListAccessKeys operation.
  factory AccessKeyMetadata.build(
      [void Function(AccessKeyMetadataBuilder) updates]) = _$AccessKeyMetadata;

  const AccessKeyMetadata._();

  static const List<_i3.SmithySerializer> serializers = [
    AccessKeyMetadataAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessKeyMetadataBuilder b) {}

  /// The name of the IAM user that the key is associated with.
  String? get userName;

  /// The ID for this access key.
  String? get accessKeyId;

  /// The status of the access key. `Active` means that the key is valid for API calls; `Inactive` means it is not.
  _i2.StatusType? get status;

  /// The date when the access key was created.
  DateTime? get createDate;
  @override
  List<Object?> get props => [
        userName,
        accessKeyId,
        status,
        createDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessKeyMetadata');
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'accessKeyId',
      accessKeyId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'createDate',
      createDate,
    );
    return helper.toString();
  }
}

class AccessKeyMetadataAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<AccessKeyMetadata> {
  const AccessKeyMetadataAwsQuerySerializer() : super('AccessKeyMetadata');

  @override
  Iterable<Type> get types => const [
        AccessKeyMetadata,
        _$AccessKeyMetadata,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AccessKeyMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessKeyMetadataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'UserName':
          if (value != null) {
            result.userName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AccessKeyId':
          if (value != null) {
            result.accessKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StatusType),
            ) as _i2.StatusType);
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
    final payload = (object as AccessKeyMetadata);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AccessKeyMetadataResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.userName != null) {
      result
        ..add(const _i3.XmlElementName('UserName'))
        ..add(serializers.serialize(
          payload.userName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.accessKeyId != null) {
      result
        ..add(const _i3.XmlElementName('AccessKeyId'))
        ..add(serializers.serialize(
          payload.accessKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.StatusType),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i3.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}