initialize-release
initialize
  super initialize.
  self
    map: 'meessages' to: #'messagesRequest:';
    map: 'addMessage' to: #'addMessageRequest:';
    yourself