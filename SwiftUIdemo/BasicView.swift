//
//  BasicView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 12/09/2022.
//

import SwiftUI

struct BasicView: View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink { ViewsView() } label: { Text("Views") }.badge(10)
                NavigationLink { ModifiersView() } label: { Text("Modifiers") }
                NavigationLink { GraphicsView() } label: { Text("Graphics") }
                NavigationLink { SampleEmptyView() } label: { Text("Empty View") }
            }
            .navigationTitle("Basic")
        }
    }

}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}

