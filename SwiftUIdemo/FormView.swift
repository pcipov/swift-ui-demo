//
//  ThirdTabView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 12/09/2022.
//

import SwiftUI

enum SamplePicker: String, CaseIterable, Identifiable {
    case one, two, three
    var id: Self { self }
}


struct FormView: View {
    
    @State private var picker = SamplePicker.one
    @State private var toggle = false
    @State private var textField = ""
    @State private var secureField: String = ""
    @State private var bgColor = Color(.sRGB, red: 1, green: 1, blue: 1)
    @State private var date = Date()
    @State private var slider: Double = 50
    @State private var stepper: Int = 50
    @State private var textEditor: String = ""

    var body: some View {
        Form {
            Section(header: Text("Texts")) {
                TextField("TextField", text: $textField)
                    .submitScope() // Doesn't fire submit event
                SecureField("SecureField", text: $secureField)
                Text("Text Editor:")
                TextEditor(text: $textEditor)
            }
            Section(header: Text("Pickers")) {
                Picker("Picker", selection: $picker) {
                    Text("One").tag(SamplePicker.one)
                    Text("Two").tag(SamplePicker.two)
                    Text("Three").tag(SamplePicker.three)
                }
                DatePicker("DatePicker", selection: $date, displayedComponents: [.date])
                    .environment(\.locale, Locale.init(identifier: "sk"))
                    ColorPicker("Select background color", selection: $bgColor)
            }
            Section(header: Text("Others")) {
                Toggle("Toggle", isOn: $toggle)
                Slider(
                    value: $slider,
                    in: 0...100,
                    onEditingChanged: { editing in
                        print(editing)
                    }
                )
                Text("\(Int(slider))%")
                    .frame(maxWidth: .infinity, alignment: .center)
                Stepper {
                    Text("Stepper: \(stepper)")
                } onIncrement: {
                    stepper += 1
                } onDecrement: {
                    stepper -= 1
                }
            }
            Button {
                print("Uložené")
            } label: {
                HStack {
                    Spacer()
                    Text("Uložiť")
                    Spacer()
                }
            }
            
        }
            .onSubmit {
                print("Submitted")
            }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
