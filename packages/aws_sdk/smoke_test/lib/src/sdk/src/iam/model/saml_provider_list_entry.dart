// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.saml_provider_list_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'saml_provider_list_entry.g.dart';

/// Contains the list of SAML providers for this account.
abstract class SamlProviderListEntry
    with _i1.AWSEquatable<SamlProviderListEntry>
    implements Built<SamlProviderListEntry, SamlProviderListEntryBuilder> {
  /// Contains the list of SAML providers for this account.
  factory SamlProviderListEntry({
    String? arn,
    DateTime? validUntil,
    DateTime? createDate,
  }) {
    return _$SamlProviderListEntry._(
      arn: arn,
      validUntil: validUntil,
      createDate: createDate,
    );
  }

  /// Contains the list of SAML providers for this account.
  factory SamlProviderListEntry.build(
          [void Function(SamlProviderListEntryBuilder) updates]) =
      _$SamlProviderListEntry;

  const SamlProviderListEntry._();

  static const List<_i2.SmithySerializer> serializers = [
    SamlProviderListEntryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SamlProviderListEntryBuilder b) {}

  /// The Amazon Resource Name (ARN) of the SAML provider.
  String? get arn;

  /// The expiration date and time for the SAML provider.
  DateTime? get validUntil;

  /// The date and time when the SAML provider was created.
  DateTime? get createDate;
  @override
  List<Object?> get props => [
        arn,
        validUntil,
        createDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SamlProviderListEntry');
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'validUntil',
      validUntil,
    );
    helper.add(
      'createDate',
      createDate,
    );
    return helper.toString();
  }
}

class SamlProviderListEntryAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<SamlProviderListEntry> {
  const SamlProviderListEntryAwsQuerySerializer()
      : super('SamlProviderListEntry');

  @override
  Iterable<Type> get types => const [
        SamlProviderListEntry,
        _$SamlProviderListEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SamlProviderListEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SamlProviderListEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ValidUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as SamlProviderListEntry);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SamlProviderListEntryResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.arn != null) {
      result
        ..add(const _i2.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.validUntil != null) {
      result
        ..add(const _i2.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
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