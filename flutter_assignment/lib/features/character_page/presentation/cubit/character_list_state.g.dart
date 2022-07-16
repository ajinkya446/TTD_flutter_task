// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterListState _$$_CharacterListStateFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterListState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterListStateToJson(
        _$_CharacterListState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_CharacterListStateEmpty _$$_CharacterListStateEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterListStateEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterListStateEmptyToJson(
        _$_CharacterListStateEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_CharacterListStateError _$$_CharacterListStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterListStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterListStateErrorToJson(
        _$_CharacterListStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_CharacterListStateListReceived _$$_CharacterListStateListReceivedFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterListStateListReceived(
      (json['response'] as List<dynamic>)
          .map((e) => CharacterModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_CharacterListStateListReceivedToJson(
        _$_CharacterListStateListReceived instance) =>
    <String, dynamic>{
      'response': instance.response,
      'runtimeType': instance.$type,
    };
