//
//  LLViewController.swift
//  ll_flutter_demo
//
//  Created by shivansh mittal on 06/06/21.
//

import Foundation
import EngagementSDK

class LLViewController: UIViewController {

    let widgetViewController = WidgetPopupViewController()
    let chatViewController = ChatViewController()

    var session: ContentSession?

    
    init(clientId: String, programId:String) {
        super.init(nibName: nil, bundle: nil)
        let config = EngagementSDKConfig(clientID: clientId)
        let engagementSDK = EngagementSDK(config: config)
        let sConfig = SessionConfiguration(programID: programId)
        session = engagementSDK.contentSession(config: sConfig)
        widgetViewController.session = session
        chatViewController.session = session
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

            // Add `chatViewController` as child view controller
            addChild(chatViewController)
            chatViewController.didMove(toParent: self)

            // Apply constraints to the `chatViewController.view`
            chatViewController.view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(chatViewController.view)
            NSLayoutConstraint.activate([
                chatViewController.view.topAnchor.constraint(equalTo: view.topAnchor),
                chatViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                chatViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                chatViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])

            // Add `widgetViewController` as child view controller
            addChild(widgetViewController)
            widgetViewController.didMove(toParent: self)

            // Apply constraints to the `widgetViewController.view`
            widgetViewController.view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(widgetViewController.view)
            NSLayoutConstraint.activate([
                widgetViewController.view.topAnchor.constraint(equalTo: view.topAnchor),
                widgetViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                widgetViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                widgetViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }

    
    override func viewDidDisappear(_ animated: Bool) {
        self.session?.close()
    }
}
