//
//  ContentView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BasicView()
                .tabItem {
                    Label("Basic", systemImage: "square.and.pencil")
                }
                .badge(4)
            ScrollViewExample()
                .tabItem {
                    Label("Scroll", systemImage: "paperplane.fill")
                }
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
            FormView()
                .tabItem {
                    Label("Form", systemImage: "folder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
