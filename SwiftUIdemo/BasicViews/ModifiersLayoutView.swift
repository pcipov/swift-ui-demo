//
//  ModifiersLayout.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 22/09/2022.
//

import SwiftUI

struct ModifiersLayoutView: View {
    
    @State var location = CGPoint.zero
    
    var body: some View {

        VStack(spacing: 10) {

            ZStack {
                Color(red: 0.8, green: 0.8, blue: 0.8)
                    .frame(width: 300, height: 100, alignment: .center)
                Text("Outside safe area")
                    .font(.system(size: 36))
                    .foregroundColor(.red)
            }
            .edgesIgnoringSafeArea([.top])

            
            HStack {
                Text("AlignmentGuide")
                    .alignmentGuide(VerticalAlignment.center) { _ in 20 }
                    .border(.gray)
                    .padding(20)

                Ellipse()
                    .fill(Color.red)
                    .aspectRatio(CGSize(width: 5, height: 3), contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .border(Color.blue)
                    .padding(20)

                Image(systemName: "folder")
                    .font(.system(size: 30, weight: .ultraLight))
                    .background(Background())
                    .padding(20)
            }
            
            Text("A single line of text, too long to fit in a box.")
                .font(.custom("AmericanTypewriter", fixedSize: 16))
                .fixedSize()
                .frame(width: 200, height: 50)
                .border(Color.gray)
            
            Image(systemName: "folder")
                .font(.system(size: 55, weight: .thin))
                .overlay(Text("❤️"), alignment: .bottom)
            
            Color(red: 0.8, green: 0.8, blue: 0.8)
                .frame(width: 40, height: 40, alignment: .leading)
                .position(x: 20, y: 20)
            
            HStack {
                Circle()
                    .fill(Color.pink)
                    .scaledToFill()
                    .frame(width: 100, height: 50)
                    .border(Color(white: 0.75))
                Circle()
                    .fill(Color.pink)
                    .scaledToFit()
                    .frame(width: 100, height: 50)
                    .border(Color(white: 0.75))
            }
            
            
            
            Spacer()
        }

    }
}

struct ModifiersLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersLayoutView()
    }
}

struct Background: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 50, height: 50, alignment: .center)
                .rotationEffect(.degrees(45.0))
        }
    }
}
