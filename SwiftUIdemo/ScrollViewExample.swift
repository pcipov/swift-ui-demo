//
//  SecondTabView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 12/09/2022.
//

import SwiftUI

struct ScrollViewExample: View {

    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                 ForEach(0x1f600...0x1f64f, id: \.self) { value in
                     Text(String(format: "%x", value))
                     Text(emoji(value))
                         .font(.largeTitle)
                 }
             }
        }
        
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
    
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}
