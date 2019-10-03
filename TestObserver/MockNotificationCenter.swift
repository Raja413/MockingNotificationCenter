//
//  MockNotificationCenter.swift
//  TestObserver
//
//  Created by POREDDY, RAJA on 10/3/19.
//  Copyright © 2019 POREDDY, RAJA. All rights reserved.
//

import Foundation

class MockNotificationCenter: NotificationCenterProtocol {
  
  var observers: [Any] = []
  var postedNotifications: [[String : Any?]] = [[:]]
  
  func post(name: NSNotification.Name, object: Any?) {
    postedNotifications.append([name.rawValue: object])
  }
  
  func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?) {
    observers.append(observer)
  }
  
  func removeObserver(_ observer: Any) {
    
  }
  
}
