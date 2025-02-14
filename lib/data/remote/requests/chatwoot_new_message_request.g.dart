// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatwoot_new_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatwootNewMessageRequest _$ChatwootNewMessageRequestFromJson(
        Map<String, dynamic> json) =>
    ChatwootNewMessageRequest(
      content: json['content'] as String,
      echoId: json['echo_id'] as String,
      attachments: json['attachments'] as List<String>,
    );

Map<String, dynamic> _$ChatwootNewMessageRequestToJson(
        ChatwootNewMessageRequest instance) =>
    <String, dynamic>{
      'content': instance.content,
      'echo_id': instance.echoId,
      'attachments': instance.attachments,
    };
