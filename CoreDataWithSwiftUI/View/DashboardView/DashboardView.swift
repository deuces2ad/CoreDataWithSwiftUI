//
//  DashboardView.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import SwiftUI

struct DashboardView: View {
    
    //MARK: - Properties
    let TAG = "DashboardView"
    @ObservedObject var dashBoardViewModel : DashboardViewModel = DashboardViewModel()
    @State var showModel = false
    @State var newCourseInfo : Course = Course(collegeName: "", courseName: "", courseDuration: Int())
    
    //MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading){
            
            List (dashBoardViewModel.courseItems) { item in
                CourseItemView(collegeName: item.collegeName,
                               courseName: item.courseName,
                               courseDuration: item.courseDuration)
            }
            
        }//:VSTACK
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    Log.echo(key: TAG, text: "Add button tapped")
                    showModel.toggle()
                    
                } label: {
                    Text("+ New Course")
                    
                }
            }
        }//:TOOLBar
        .sheet(isPresented: $showModel){
            NewCourseView(courseInfo: $newCourseInfo){ newItem in
                dashBoardViewModel.courseItems.append(newItem)
            }
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Course Info")
    }//:BODY
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}





