import 'package:chatwoot_sdk/chatwoot_sdk.dart';
import 'package:chatwoot_sdk/data/local/entity/chatwoot_contact.dart';
import 'package:chatwoot_sdk/data/local/local_storage.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'chatwoot_conversation.g.dart';

@HiveType(typeId: CHATWOOT_CONVERSATION_HIVE_TYPE_ID)
@JsonSerializable(explicitToJson: true)
class ChatwootConversation extends Equatable {
  @JsonKey()
  @HiveField(0)
  final int id;

  @JsonKey()
  @HiveField(1)
  final int inboxId;

  @JsonKey()
  @HiveField(2)
  final List<ChatwootMessage> messages;

  @JsonKey()
  @HiveField(3)
  final ChatwootContact contact;

  @JsonKey()
  @HiveField(4)
  final String uuid;

  @JsonKey(name: 'contact_last_seen_at')
  @HiveField(5)
  final int contactLastSeenAt;

  @JsonKey()
  @HiveField(6)
  final String status;

  @JsonKey(name: 'agent_last_seen_at')
  @HiveField(7)
  final int agentLastSeenAt;

  ChatwootConversation({
    required this.id,
    required this.inboxId,
    required this.messages,
    required this.contact,
    required this.uuid,
    required this.contactLastSeenAt,
    required this.status,
    required this.agentLastSeenAt,
  });

  factory ChatwootConversation.fromJson(Map<String, dynamic> json) =>
      _$ChatwootConversationFromJson(json);

  Map<String, dynamic> toJson() => _$ChatwootConversationToJson(this);

  @override
  List<Object> get props => [
        id,
        inboxId,
        messages,
        contact,
        uuid,
        contactLastSeenAt,
        status,
        agentLastSeenAt,
      ];
}
