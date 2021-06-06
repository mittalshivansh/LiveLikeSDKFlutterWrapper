//
//  FLLiveLikeNativeView.swift
//  ll_flutter_demo
//
//  Created by shivansh mittal on 06/06/21.
//

import Foundation
import Flutter
import UIKit

class FLLiveLikeNativeView: NSObject, FlutterPlatformView {
    
    private let uiController : UIViewController

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
    
        // iOS views can be created here
      let dic = args as? Dictionary<String, String>
        
        uiController = LLViewController(clientId:dic?.self["clientId"] as! String,programId: dic?.self["programId"] as! String)
        super.init()
    }

    func view() -> UIView {
        return uiController.view
    }

}
