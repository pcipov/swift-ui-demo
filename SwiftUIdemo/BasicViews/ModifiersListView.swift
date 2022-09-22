//
//  ModifiersListView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 22/09/2022.
//

import SwiftUI

struct ModifiersListView: View {
        
    var body: some View {
        
        List {
            Text("aaa")
            Text("bbb")
                .listRowBackground(Color(white: 0.8))
            Text("ccc")
                .listRowInsets(.init(top: 0, leading: 25, bottom: 0, trailing: 0))
            Text("ddd")
            Text("eee")
                .listRowSeparator(.hidden)
            Text("fff")
            Text("ggg")
        }
        
    }
}

struct ModifiersListView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersListView()
    }
}
