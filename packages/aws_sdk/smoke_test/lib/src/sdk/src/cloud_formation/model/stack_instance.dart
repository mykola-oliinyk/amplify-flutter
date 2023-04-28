// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_comprehensive_status.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance_status.dart'
    as _i3;

part 'stack_instance.g.dart';

/// An CloudFormation stack, in a specific account and Region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given Region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, in addition to the ID of the actual stack and the stack status.
abstract class StackInstance
    with _i1.AWSEquatable<StackInstance>
    implements Built<StackInstance, StackInstanceBuilder> {
  /// An CloudFormation stack, in a specific account and Region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given Region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, in addition to the ID of the actual stack and the stack status.
  factory StackInstance({
    String? stackSetId,
    String? region,
    String? account,
    String? stackId,
    List<_i2.Parameter>? parameterOverrides,
    _i3.StackInstanceStatus? status,
    _i4.StackInstanceComprehensiveStatus? stackInstanceStatus,
    String? statusReason,
    String? organizationalUnitId,
    _i5.StackDriftStatus? driftStatus,
    DateTime? lastDriftCheckTimestamp,
  }) {
    return _$StackInstance._(
      stackSetId: stackSetId,
      region: region,
      account: account,
      stackId: stackId,
      parameterOverrides:
          parameterOverrides == null ? null : _i6.BuiltList(parameterOverrides),
      status: status,
      stackInstanceStatus: stackInstanceStatus,
      statusReason: statusReason,
      organizationalUnitId: organizationalUnitId,
      driftStatus: driftStatus,
      lastDriftCheckTimestamp: lastDriftCheckTimestamp,
    );
  }

  /// An CloudFormation stack, in a specific account and Region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given Region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, in addition to the ID of the actual stack and the stack status.
  factory StackInstance.build([void Function(StackInstanceBuilder) updates]) =
      _$StackInstance;

  const StackInstance._();

  static const List<_i7.SmithySerializer> serializers = [
    StackInstanceAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackInstanceBuilder b) {}

  /// The name or unique ID of the stack set that the stack instance is associated with.
  String? get stackSetId;

  /// The name of the Amazon Web Services Region that the stack instance is associated with.
  String? get region;

  /// \[Self-managed permissions\] The name of the Amazon Web Services account that the stack instance is associated with.
  String? get account;

  /// The ID of the stack instance.
  String? get stackId;

  /// A list of parameters from the stack set template whose values have been overridden in this stack instance.
  _i6.BuiltList<_i2.Parameter>? get parameterOverrides;

  /// The status of the stack instance, in terms of its synchronization with its associated stack set.
  ///
  /// *   `INOPERABLE`: A `DeleteStackInstances` operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further `UpdateStackSet` operations. You might need to perform a `DeleteStackInstances` operation, with `RetainStacks` set to `true`, to delete the stack instance, and then delete the stack manually.
  ///
  /// *   `OUTDATED`: The stack isn't currently up to date with the stack set because:
  ///
  ///     *   The associated stack failed during a `CreateStackSet` or `UpdateStackSet` operation.
  ///
  ///     *   The stack was part of a `CreateStackSet` or `UpdateStackSet` operation that failed or was stopped before the stack was created or updated.
  ///
  /// *   `CURRENT`: The stack is currently up to date with the stack set.
  _i3.StackInstanceStatus? get status;

  /// The detailed status of the stack instance.
  _i4.StackInstanceComprehensiveStatus? get stackInstanceStatus;

  /// The explanation for the specific status code that's assigned to this stack instance.
  String? get statusReason;

  /// \[Service-managed permissions\] The organization root ID or organizational unit (OU) IDs that you specified for [DeploymentTargets](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html).
  String? get organizationalUnitId;

  /// Status of the stack instance's actual configuration compared to the expected template and parameter configuration of the stack set to which it belongs.
  ///
  /// *   `DRIFTED`: The stack differs from the expected template and parameter configuration of the stack set to which it belongs. A stack instance is considered to have drifted if one or more of the resources in the associated stack have drifted.
  ///
  /// *   `NOT_CHECKED`: CloudFormation hasn't checked if the stack instance differs from its expected stack set configuration.
  ///
  /// *   `IN_SYNC`: The stack instance's actual configuration matches its expected stack set configuration.
  ///
  /// *   `UNKNOWN`: This value is reserved for future use.
  _i5.StackDriftStatus? get driftStatus;

  /// Most recent time when CloudFormation performed a drift detection operation on the stack instance. This value will be `NULL` for any stack instance on which drift detection hasn't yet been performed.
  DateTime? get lastDriftCheckTimestamp;
  @override
  List<Object?> get props => [
        stackSetId,
        region,
        account,
        stackId,
        parameterOverrides,
        status,
        stackInstanceStatus,
        statusReason,
        organizationalUnitId,
        driftStatus,
        lastDriftCheckTimestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackInstance');
    helper.add(
      'stackSetId',
      stackSetId,
    );
    helper.add(
      'region',
      region,
    );
    helper.add(
      'account',
      account,
    );
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
      'parameterOverrides',
      parameterOverrides,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'stackInstanceStatus',
      stackInstanceStatus,
    );
    helper.add(
      'statusReason',
      statusReason,
    );
    helper.add(
      'organizationalUnitId',
      organizationalUnitId,
    );
    helper.add(
      'driftStatus',
      driftStatus,
    );
    helper.add(
      'lastDriftCheckTimestamp',
      lastDriftCheckTimestamp,
    );
    return helper.toString();
  }
}

class StackInstanceAwsQuerySerializer
    extends _i7.StructuredSmithySerializer<StackInstance> {
  const StackInstanceAwsQuerySerializer() : super('StackInstance');

  @override
  Iterable<Type> get types => const [
        StackInstance,
        _$StackInstance,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackInstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackSetId':
          if (value != null) {
            result.stackSetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Region':
          if (value != null) {
            result.region = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Account':
          if (value != null) {
            result.account = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ParameterOverrides':
          if (value != null) {
            result.parameterOverrides.replace((const _i7.XmlBuiltListSerializer(
                    indexer: _i7.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.Parameter)],
              ),
            ) as _i6.BuiltList<_i2.Parameter>));
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StackInstanceStatus),
            ) as _i3.StackInstanceStatus);
          }
          break;
        case 'StackInstanceStatus':
          if (value != null) {
            result.stackInstanceStatus.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i4.StackInstanceComprehensiveStatus),
            ) as _i4.StackInstanceComprehensiveStatus));
          }
          break;
        case 'StatusReason':
          if (value != null) {
            result.statusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'OrganizationalUnitId':
          if (value != null) {
            result.organizationalUnitId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DriftStatus':
          if (value != null) {
            result.driftStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.StackDriftStatus),
            ) as _i5.StackDriftStatus);
          }
          break;
        case 'LastDriftCheckTimestamp':
          if (value != null) {
            result.lastDriftCheckTimestamp = (serializers.deserialize(
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
    final payload = (object as StackInstance);
    final result = <Object?>[
      const _i7.XmlElementName(
        'StackInstanceResponse',
        _i7.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackSetId != null) {
      result
        ..add(const _i7.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          payload.stackSetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.region != null) {
      result
        ..add(const _i7.XmlElementName('Region'))
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.account != null) {
      result
        ..add(const _i7.XmlElementName('Account'))
        ..add(serializers.serialize(
          payload.account!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.stackId != null) {
      result
        ..add(const _i7.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parameterOverrides != null) {
      result
        ..add(const _i7.XmlElementName('ParameterOverrides'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.parameterOverrides!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.Parameter)],
          ),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.StackInstanceStatus),
        ));
    }
    if (payload.stackInstanceStatus != null) {
      result
        ..add(const _i7.XmlElementName('StackInstanceStatus'))
        ..add(serializers.serialize(
          payload.stackInstanceStatus!,
          specifiedType: const FullType(_i4.StackInstanceComprehensiveStatus),
        ));
    }
    if (payload.statusReason != null) {
      result
        ..add(const _i7.XmlElementName('StatusReason'))
        ..add(serializers.serialize(
          payload.statusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.organizationalUnitId != null) {
      result
        ..add(const _i7.XmlElementName('OrganizationalUnitId'))
        ..add(serializers.serialize(
          payload.organizationalUnitId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.driftStatus != null) {
      result
        ..add(const _i7.XmlElementName('DriftStatus'))
        ..add(serializers.serialize(
          payload.driftStatus!,
          specifiedType: const FullType.nullable(_i5.StackDriftStatus),
        ));
    }
    if (payload.lastDriftCheckTimestamp != null) {
      result
        ..add(const _i7.XmlElementName('LastDriftCheckTimestamp'))
        ..add(serializers.serialize(
          payload.lastDriftCheckTimestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}