//
//  ModifiersEffectsView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 22/09/2022.
//

import SwiftUI

struct ModifiersEffectsView: View {
    var body: some View {

        VStack(spacing: 10) {
            
            ZStack {
                VStack(spacing: 0) {
                    Color.blue.frame(width: 300, height: 50, alignment: .center)
                    Color.yellow.frame(width: 300, height: 50, alignment: .center)
                }
                Button("SLAVA UKRAINE") { }
                    .foregroundColor(Color.black)
                    .accentColor(.black)
                    .padding(5)
                    .border(.black, width: 2)
                    .brightness(0.1)
                    .blur(radius: 1.0)
                    .cornerRadius(5)
                    .opacity(0.9)
                    .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
            }
            .foregroundStyle(.teal)
            
            HStack {
                Text("Clipped text in a circle")
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .clipShape(Circle())
                Text("This long text string is clipped")
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .clipped()
            }

            Spacer()
            
        }
            
        
    }
}

struct ModifiersEffectsView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersEffectsView()
    }
}
