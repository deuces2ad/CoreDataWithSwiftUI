//
//  CourseItemView.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import SwiftUI

struct CourseItemView: View {
    
    //MARK: - Properties
    
    var collegeName : String
    var courseName : String
    var courseDuration : Int
   
    
    
    //MARK: - Body
     var body: some View {
        HStack(spacing: 20){
            Image(systemName: "car")
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading){
                Text(collegeName)
                Text(courseName)
                Text("\(courseDuration)")
            }
            Spacer()
        }
        .padding(.leading)
    }
}

struct CourseItemView_Previews: PreviewProvider {
    static var previews: some View {
        CourseItemView(collegeName: "LPU", courseName: "Mechanical Engineering", courseDuration: 6)
    }
}
