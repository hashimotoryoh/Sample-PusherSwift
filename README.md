# Sample-PusherSwift

## Clone

```shell
$ git clone https://github.com/hashimotoryoh/Sample-PusherSwift.git
$ cd ./Sample-PusherSwift
```

## Pod Install

```shell
$ pod install
```

## Pusher Configuration

```shell
$ mv ./Sample\ PusherSwift/PusherConfig.swift.default ./Sample\ PusherSwift/PusherConfig.swift
$ vi ./Sample\ PusherSwift/PusherConfig.swift
```

edit `./Sample\ PusherSwift/PusherConfig.swift` to:
```swift
let PUSHER_APP_ID  = "YOUR_APP_ID"
let PUSHER_KEY     = "YOUR_KEY"
let PUSHER_SECRET  = "YOUR_SECRET"
let PUSHER_CLUSTER = "YOUR_CLUSTER"
```

## Run

実行した状態でサーバ側からイベントを発行すると、以下のようにメッセージが表示される。

![simulator screen shot 2017 08 08 11 54 53](https://user-images.githubusercontent.com/12749002/29054315-77f4e522-7c30-11e7-8341-1572f9776cf1.png)
