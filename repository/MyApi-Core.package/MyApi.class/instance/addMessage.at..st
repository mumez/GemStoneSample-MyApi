actions
addMessage: messageText at: topicId
  | messages |
  messages := self messagesAt: topicId.
  messages
    add:
      {(DateAndTime now asString).
      messageText}.
  ^ messages size