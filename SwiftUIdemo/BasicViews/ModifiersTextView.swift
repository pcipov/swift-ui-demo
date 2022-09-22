//
//  ModifiersTextView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 22/09/2022.
//

import SwiftUI

struct ModifiersTextView: View {

    @State private var autocapitalization = ""
    @State private var phoneNumber = ""

    var body: some View {

        VStack(spacing: 10) {
            
            Text("This is a wide text element")
                .font(.body)
                .frame(width: 150, height: 50, alignment: .leading)
                .lineLimit(1)
                .allowsTightening(false)

            HStack {
                TextField("Last, First", text: $autocapitalization)
                    .multilineTextAlignment(.center)
                    .autocapitalization(UITextAutocapitalizationType.words)
                    .disableAutocorrection(true)

                TextField("telefónne číslo", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
            }

            HStack(alignment: .top) {
                Text("Hello")
                    .baselineOffset(-10)
                    .border(Color.red)
                Text("Hello")
                    .border(Color.green)
                Text("Hello")
                    .baselineOffset(10)
                    .border(Color.blue)
            }
            .background(Color(white: 0.9))
            
            VStack {
                Text("Font - .largeTitle")
                    .font(.largeTitle)
                Text("Font - .system 16 .light .default")
                    .font(.system(size: 16, weight: .light, design: .default))
                    .italic()
            }
            
            HStack() {
                Text("ABCDEF").kerning(-3)
                Text("ABCDEF")
                Text("ABCDEF").kerning(3)
            }
            
            Text("This is a long string that demonstrates the effect of SwiftUI's lineLimit(:_) operator.")
                .frame(width: 200, height: 50, alignment: .leading)
                .lineLimit(2)
            
            Text("This is a string in a TextField with 10 point spacing applied between the bottom of one line and the top of the next.")
                .frame(width: 200, height: 100, alignment: .leading)
                .lineSpacing(10)
                .multilineTextAlignment(.center)

            HStack {
                Text("Strikethrough")
                    .strikethrough()
                Text("Underlined")
                    .underline()
            }
            
            
            
            Spacer()

        }

    }
}

struct ModifiersTextView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersTextView()
    }
}
