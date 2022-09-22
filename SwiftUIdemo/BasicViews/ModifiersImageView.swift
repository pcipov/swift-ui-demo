//
//  ModifiersImageView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 22/09/2022.
//

import SwiftUI

struct ModifiersImageView: View {
    var body: some View {
        
        VStack(spacing: 20) {
        
            HStack {
                Image("image")
                    .antialiased(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70, height: 70)
                    .border(.blue, width: 5)
                Spacer()
                Image("image")
                    .antialiased(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .border(.blue, width: 5)
                Spacer()
                Image("image")
                    .antialiased(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .border(.blue, width: 5)
                    .clipped()
            }
                .padding(20)
            
            HStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .border(.blue, width: 5)
                Spacer()
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .border(.blue, width: 5)
                Spacer()
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .border(.blue, width: 5)
                    .clipped()
            }
                .padding(20)

            HStack {
                HStack {
                    Image(systemName: "heart.fill")
                        .imageScale(.small)
                    Text("Small")
                }
                HStack {
                    Image(systemName: "heart.fill")
                        .imageScale(.medium)
                    Text("Medium")
                }

                HStack {
                    Image(systemName: "heart.fill")
                        .imageScale(.large)
                    Text("Large")
                }
            }
            
            VStack {
                HStack(spacing: 20) {
                    Image(systemName: "person")
                    Image(systemName: "folder")
                    Image(systemName: "gearshape")
                    Image(systemName: "list.bullet")
                }

                HStack(spacing: 20) {
                    Image(systemName: "person")
                    Image(systemName: "folder")
                    Image(systemName: "gearshape")
                    Image(systemName: "list.bullet")
                }
                .symbolVariant(.fill)
            }
                
            Spacer()
        }
        
    }
}

struct ModifiersImageView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersImageView()
    }
}
