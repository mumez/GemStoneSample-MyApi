request-handling
messagesRequest: aRequest
  | uri topicId messages entity |
  uri := aRequest uri.
  topicId := uri queryAt: 'topicId' ifAbsent: [ '' ].
  messages := self messagesAt: topicId.
  ^ self returnJson: messages