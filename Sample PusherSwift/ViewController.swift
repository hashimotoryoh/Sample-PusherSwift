//
//  ViewController.swift
//  Sample PusherSwift
//
//  Created by winas_user on 2017/08/08.
//  Copyright © 2017年 Ryoh Hashimoto. All rights reserved.
//

import UIKit
import PusherSwift
import Toast_Swift

class ViewController: UIViewController {
    
    let pusher = Pusher(key: PUSHER_KEY, options: PusherClientOptions(host: .cluster(PUSHER_CLUSTER)))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let channelName = "sample-channel"
        let eventName   = "sample-event"
        
        let channel = self.pusher.subscribe(channelName: channelName)
        channel.bind(eventName: eventName, callback: { (data: Any?) in
            guard let json = data as? [String:Any?] else {
                print("取得したデータが解析不能")
                abort()
            }
            
            guard let message = json["message"] as? String else {
                print("取得したデータに\"message\"キーが無い")
                return
            }
            
            self.view.makeToast(message)
        })
    }

    override func viewDidAppear(_ animated: Bool) {
        self.pusher.connect()
    }

}
