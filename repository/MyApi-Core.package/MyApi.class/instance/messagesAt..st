accessing
messagesAt: topicId
  ^ self messagesMap at: topicId ifAbsentPut: [ RcArray new ]