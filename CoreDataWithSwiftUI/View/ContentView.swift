//
//  ContentView.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            DashboardView()
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
