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
                NavigationLink { ModifiersControlsView() } label: { Text("Modifiers - Controls") }
                NavigationLink { ModifiersEffectsView() } label: { Text("Modifiers - Effects") }
                NavigationLink { ModifiersLayoutView() } label: { Text("Modifiers - Layout") }
                NavigationLink { ModifiersTextView() } label: { Text("Modifiers - Text") }
                NavigationLink { ModifiersImageView() } label: { Text("Modifiers - Image") }
                NavigationLink { ModifiersListView() } label: { Text("Modifiers - List") }
                NavigationLink { GraphicsView() } label: { Text("Graphics") }
                NavigationLink { SampleEmptyView() } label: { Text("Empty View") }
            }
            .navigationTitle("Basic")
            .navigationBarTitleDisplayMode(.automatic)
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarTitleDisplayMode(.large)
        }
    }

}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}

