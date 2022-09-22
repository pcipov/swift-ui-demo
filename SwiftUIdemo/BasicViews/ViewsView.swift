//
//  UserInterfaceView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 21/09/2022.
//

import SwiftUI

struct ViewsView: View {
    
    @State private var clickCounter = 0
    @State private var date = Date()
    @State private var fruits = ["Apple", "Banana", "Papaya", "Mango"]
    @State private var progressView = 0.5

    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text("User Interface")
                .foregroundColor(.primary)
                .font(.title)
//                .padding()
    
            GroupBox(label: Text("GroupBoxTitle")) {
                Text("GroupBox")
            }

            DisclosureGroup("DisclosureGroup") {
                Text("DisclosureGroup")
            }

            Link("Link", destination: URL(string: "https://www.ostrovrab.sk")!)

            Menu(/*@START_MENU_TOKEN@*/"Menu"/*@END_MENU_TOKEN@*/) {
                Button {
                    print("Item 1")
                } label: {
                    Text("Item 1")
                }
                Button {
                    print("Item 2")
                } label: {
                    Text("Item 2")
                }
                Button {
                    print("Item 3")
                } label: {
                    Text("Item 3")
                }
            }

            Divider()
            
            VStack {
                HStack {
                    Text("ProgressView")
                    Spacer()
                }
                ProgressView(value: progressView)
            }

            Group {
                Text("Group Item 1")
                Text("Group Item 2")
                Text("Group Item 3")
            }
            
            TimelineView(PeriodicTimelineSchedule(from: Date(), by: 1)) { context in
                Text("\(context.date)")
            }
            
            
            Spacer()

        }
        .padding(.horizontal, 10)
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button("Toolbar Button 1") {
                    print("First button pressed")
                }
                Button("Toolbar Button 2") {
                    print("Second button pressed")
                }
            }
        }

    }
}

struct ViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ViewsView()
    }
}
