//
//  ListItemView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 12/09/2022.
//

import SwiftUI

struct ListItemView: View {
    
    var item: String
    
    var body: some View {
        Text(item)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(item: "Test")
    }
}
