//
//  ViewController.swift
//  TestObserver
//
//  Created by POREDDY, RAJA on 7/8/19.
//  Copyright © 2019 POREDDY, RAJA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    NotificationCenterImp.notificationVenter.addObserver(self, selector:#selector(receiveNot(_:)) , name: NSNotification.Name(rawValue: "test"), object: nil)

    print(test().post())
  }
  
  @objc func receiveNot(_ notification: Notification) {
    print("received")
  }
}


class test {
  
  private let notificationCenterDefault: NotificationCenterProtocol
  
  init(_ notificationCenterDefault: NotificationCenterProtocol = NotificationCenterImp.notificationVenter) {
    self.notificationCenterDefault = notificationCenterDefault
  }
  
  func post() {
    notificationCenterDefault.post(name: NSNotification.Name(rawValue: "test"), object: "testObject")
  }
}
