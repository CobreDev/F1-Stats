//
//  MainView.swift
//  F1 Stats
//
//  Created by Cobre on 6/17/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            DriverView()
                .tabItem {
                    Label("Drivers", systemImage: "person")
                }

            ConstructorView()
                .tabItem {
                    Label("Teams", systemImage: "person.3")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
