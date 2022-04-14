accessing
messagesMap
  ^ UserGlobals at: #'messagesMap' ifAbsentPut: [ Dictionary new ]