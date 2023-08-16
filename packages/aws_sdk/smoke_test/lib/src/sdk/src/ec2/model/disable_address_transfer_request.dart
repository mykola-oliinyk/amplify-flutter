// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disable_address_transfer_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_address_transfer_request.g.dart';

abstract class DisableAddressTransferRequest
    with
        _i1.HttpInput<DisableAddressTransferRequest>,
        _i2.AWSEquatable<DisableAddressTransferRequest>
    implements
        Built<DisableAddressTransferRequest,
            DisableAddressTransferRequestBuilder> {
  factory DisableAddressTransferRequest({
    String? allocationId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisableAddressTransferRequest._(
      allocationId: allocationId,
      dryRun: dryRun,
    );
  }

  factory DisableAddressTransferRequest.build(
          [void Function(DisableAddressTransferRequestBuilder) updates]) =
      _$DisableAddressTransferRequest;

  const DisableAddressTransferRequest._();

  factory DisableAddressTransferRequest.fromRequest(
    DisableAddressTransferRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DisableAddressTransferRequest>>
      serializers = [DisableAddressTransferRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableAddressTransferRequestBuilder b) {
    b.dryRun = false;
  }

  /// The allocation ID of an Elastic IP address.
  String? get allocationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableAddressTransferRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DisableAddressTransferRequest')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class DisableAddressTransferRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisableAddressTransferRequest> {
  const DisableAddressTransferRequestEc2QuerySerializer()
      : super('DisableAddressTransferRequest');

  @override
  Iterable<Type> get types => const [
        DisableAddressTransferRequest,
        _$DisableAddressTransferRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableAddressTransferRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableAddressTransferRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisableAddressTransferRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DisableAddressTransferRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisableAddressTransferRequest(:allocationId, :dryRun) = object;
    if (allocationId != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}