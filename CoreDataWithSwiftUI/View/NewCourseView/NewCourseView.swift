//
//  NewCourseView.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import SwiftUI

struct NewCourseView: View {
    
    //MARK: - Properties
    
    @Binding var courseInfo : Course
    @Environment(\.presentationMode) var presentationMode
    var listner: ((_ : Course) -> Void)?
    
    //MARK: - Body
    
    var body: some View {
        VStack{
            List{
                Section("Institute Name") {
                    TextField("Institute", text: $courseInfo.collegeName)
                      
                }
                
                Section("Course Name") {
                    TextField("Course", text: $courseInfo.courseName)
                        
                }
                
                Section("Duration (In Yrs)") {
                    TextField("In Yrs", value: $courseInfo.courseDuration, formatter: NumberFormatter())
                        .keyboardType(.numberPad)
                }
            }
            
            Button {
                courseInfo = Course(collegeName: courseInfo.collegeName, courseName: courseInfo.courseName, courseDuration: courseInfo.courseDuration)
                listner?(courseInfo)
                
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Submit")
                    .foregroundColor(.blue)
                    .frame(maxWidth:.infinity)
            }

        }
    }
}

struct NewCourseView_Previews: PreviewProvider {
    static var previews: some View {
        NewCourseView(courseInfo: .constant(Course(collegeName: "", courseName: "", courseDuration: 7)))
    }
}
