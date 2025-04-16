// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatwoot_conversation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatwootConversationAdapter extends TypeAdapter<ChatwootConversation> {
  @override
  final int typeId = 1;

  @override
  ChatwootConversation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatwootConversation(
      id: fields[0] as int,
      inboxId: fields[1] as int,
      messages: (fields[2] as List).cast<ChatwootMessage>(),
      contact: fields[3] as ChatwootContact,
      uuid: fields[4] as String,
      contactLastSeenAt: fields[5] as int,
      status: fields[6] as String,
      agentLastSeenAt: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ChatwootConversation obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.inboxId)
      ..writeByte(2)
      ..write(obj.messages)
      ..writeByte(3)
      ..write(obj.contact)
      ..writeByte(4)
      ..write(obj.uuid)
      ..writeByte(5)
      ..write(obj.contactLastSeenAt)
      ..writeByte(6)
      ..write(obj.status)
      ..writeByte(7)
      ..write(obj.agentLastSeenAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatwootConversationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatwootConversation _$ChatwootConversationFromJson(
        Map<String, dynamic> json) =>
    ChatwootConversation(
      id: (json['id'] as num).toInt(),
      inboxId: (json['inboxId'] as num).toInt(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatwootMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      contact:
          ChatwootContact.fromJson(json['contact'] as Map<String, dynamic>),
      uuid: json['uuid'] as String,
      contactLastSeenAt: (json['contact_last_seen_at'] as num).toInt(),
      status: json['status'] as String,
      agentLastSeenAt: (json['agent_last_seen_at'] as num).toInt(),
    );

Map<String, dynamic> _$ChatwootConversationToJson(
        ChatwootConversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inboxId': instance.inboxId,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'contact': instance.contact.toJson(),
      'uuid': instance.uuid,
      'contact_last_seen_at': instance.contactLastSeenAt,
      'status': instance.status,
      'agent_last_seen_at': instance.agentLastSeenAt,
    };
