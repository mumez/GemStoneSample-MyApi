# GemStone-Sample-MyApi
A very simple API example for GemStone/S.

## Installation

First, you should install [gsApplicationTools](https://github.com/GsDevKit/gsApplicationTools).

Then, from the tODE shell:
```
project entry --baseline=MyApi --repo=github://mumez/GemStoneSample-MyApi:main/repository /sys/local/server/projects
```

## How to run

Register 'zinc' GemServer.

```smalltalk
ZnNewGemServer register: 'zinc' on: #(9089 9088).
```

Now, you can set `MyApi` as a delegate.

```smalltalk
(GemServer gemServerNamed: 'zinc') delegate: MyApi new.
(GemServer gemServerNamed: 'zinc') restartGems.
```

## How to access

- List messages

`http://<yourHost>:9089/messages?topicId=<topicId>`

- Add a message to a topic

`http://<yourHost>:9089/addMessage?topicId=testTopic&message=hello`

## Browsing the code

From the tODE shell:

```
browse class MyApi
```

---
Enjoy!
