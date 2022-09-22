//
//  GraphicsView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 21/09/2022.
//

import SwiftUI

struct GraphicsView: View {
    
    let color = Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: 0.8, blue: 0.5)
    
    var body: some View {

        VStack {

            HStack {
                Capsule()
                Circle()
                Ellipse()
                Rectangle()
                RoundedRectangle(cornerRadius: 5)
            }

            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Canvas { context, size in
                
                let w = size.width
                let h = size.height
                
                // Draw background
                context.fill(Path(CGRect(origin: .zero, size: size)), with: .color(Color(.sRGB, red: 230/255, green: 240/255, blue: 1, opacity: 1.0)))
                
                // Draw a square
                var squarePath = Path()
                squarePath.move(to: CGPoint(x: 50, y: 50))
                squarePath.addLine(to: CGPoint(x: 100, y: 50))
                squarePath.addLine(to: CGPoint(x: 100, y: 100))
                squarePath.addLine(to: CGPoint(x: 50, y: 100))
                context.fill(squarePath, with: .color(color))
                
                // Add a Filter
                context.addFilter(.saturation(2.5))
                
                // Draw Images
                context.draw(Image(systemName: "person.fill"), at: CGPoint(x: w / 2, y: h / 2.2))
                
                // Draw Text
                context.draw(Text("SwiftUI Canvas").bold().italic().foregroundColor(.green), at: CGPoint(x: w / 2, y: h / 2))
                
            }
            .edgesIgnoringSafeArea(.all)
            
            
            
            Spacer()

        }
        .padding(10)
        
    }
}

struct GraphicsView_Previews: PreviewProvider {
    static var previews: some View {
        GraphicsView()
    }
}
