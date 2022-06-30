//
//  DashboardViewModel.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import Foundation
import SwiftUI


class DashboardViewModel : ObservableObject {
    
    //MARK: - Properties
    
    @Published var courseItems :[Course] = []
  
    //MARK: - Methods
    
    func addCourse(with info :Course){
        courseItems.append(info)
    }
    
}
