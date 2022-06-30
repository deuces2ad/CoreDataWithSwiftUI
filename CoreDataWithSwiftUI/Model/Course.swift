//
//  Course.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import Foundation

struct Course :Identifiable{
    let id = UUID()
    var collegeName : String
    var courseName : String
    var courseDuration : Int
}
