//
//  NotifiactionCenterProtocol.swift
//  TestObserver
//
//  Created by POREDDY, RAJA on 10/3/19.
//  Copyright © 2019 POREDDY, RAJA. All rights reserved.
//

import Foundation


public protocol NotificationCenterProtocol {
  func post(name: NSNotification.Name, object: Any?)
  func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?)
  func removeObserver(_ observer: Any)
}

public class NotificationCenterImp: NotificationCenterProtocol {
  
  static var notificationVenter = NotificationCenterImp()
  
  public func post(name: NSNotification.Name, object: Any?) {
    NotificationCenter.default.post(name: name, object: object)
  }
  
  public func removeObserver(_ observer: Any) {
    NotificationCenter.default.removeObserver(observer)
  }
  
  public func addObserver(_ observer: Any, selector: Selector, name: NSNotification.Name?, object: Any?) {
    NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: object)
  }
}
