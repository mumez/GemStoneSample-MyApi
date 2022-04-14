actions
addMessage: aString at: topicId
  | messages |
  messages := self messagesAt: topicId.
  messages
    add:
      {(DateAndTime now asString).
      aString}.
  ^ messages size