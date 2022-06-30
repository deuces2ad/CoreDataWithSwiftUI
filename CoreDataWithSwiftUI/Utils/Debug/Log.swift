//
//  Log.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import Foundation

import Foundation

class Log {
  static func echo(key : String = "", text : Any? = ""){
    if(!DevFlag.debug){
      return
    }
    if(key != DevFlag.key && !DevFlag.showAll){
      return
    }
    guard let textEx = text else {
        print("\(key) -> nil")
        return
    }
    print("\(Date()) \(key) -> \(textEx)")
  }
}
