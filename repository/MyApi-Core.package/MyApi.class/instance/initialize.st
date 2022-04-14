initialize-release
initialize
  super initialize.
  self
    map: 'messages' to: #'messagesRequest:';
    map: 'addMessage' to: #'addMessageRequest:';
    yourself