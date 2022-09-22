//
//  FirstTabView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 12/09/2022.
//

import SwiftUI

struct ListView: View {
    
    @State private var listItems = ["First", "Second", "Third"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listItems, id: \.self) { item in
                    NavigationLink {
                        ListItemView(item: item)
                    } label: {
                        Text(item)
                    }
                }
                .onDelete { listItems.remove(atOffsets: $0) }
                .onMove { listItems.move(fromOffsets: $0, toOffset: $1) }
            }
            .navigationTitle(Text("List"))
            .toolbar {
                EditButton()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
