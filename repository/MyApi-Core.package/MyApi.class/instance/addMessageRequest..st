request-handling
addMessageRequest: aRequest
  | uri topicId message messagesSize |
  uri := aRequest uri.
  topicId := uri
    queryAt: 'topicId'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  message := uri
    queryAt: 'message'
    ifAbsent: [ ^ ZnResponse badRequest: aRequest ].
  messagesSize := self addMessage: message at: topicId.
  ^ self returnJson: messagesSize