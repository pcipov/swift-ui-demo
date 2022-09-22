//
//  ModifiersView.swift
//  SwiftUIdemo
//
//  Created by Peter Cipov on 22/09/2022.
//

import SwiftUI

struct ModifiersView: View {
    
    @State private var showingConfirmationDialog = false
    @State private var showingActionSheet = false
    @State private var confirmationDialogActionSheetSelection = "None"
    @State private var showingAlert = false
    @FocusState private var isFocused: Bool
    @State private var focusedExample = ""
    @State private var showingPopover = false
    @State private var showingSheet = false
    @State private var alertMessageText = ""
    @State private var alertMessage: Message? = nil
    @State private var hiddenStatusBar = true

    
    var body: some View {
        
        VStack(spacing: 40) {
            
            VStack(spacing: 5) {
                Text(confirmationDialogActionSheetSelection)
                
                Button("ConfirmationDialog (iOS 15+)") { showingConfirmationDialog = true }
                    .confirmationDialog("Select a color", isPresented: $showingConfirmationDialog, titleVisibility: .visible) {
                        ForEach(["Red", "Green", "Blue"], id: \.self) { color in
                            Button(color) { confirmationDialogActionSheetSelection = color }
                        }
                    }
                Button("ActionSheet (iOS 14-)") { showingActionSheet = true }
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(
                            title: Text("Select a color"),
                            buttons: [
                                .default(Text("Red")) { confirmationDialogActionSheetSelection = "Red" },
                                .default(Text("Green")) { confirmationDialogActionSheetSelection = "Green" },
                                .default(Text("Blue")) { confirmationDialogActionSheetSelection = "Blue" },
                                .cancel { print(showingActionSheet) }
                            ]
                        )
                    }
            }
            
            Button("Alert with static message") { showingAlert = true }
                .alert("Important message", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
            
            VStack(spacing: 5) {
                TextField("message", text: $alertMessageText)
                    .multilineTextAlignment(.center)
                Button("Alert with dynamic message") {
                    alertMessage = Message(text: alertMessageText)
                }
                    .alert(item: $alertMessage) { message in
                        Alert(
                            title: Text(message.text),
                            dismissButton: .cancel()
                        )
                    }
            }
            
            Text("ContextMenu - long press")
                .contextMenu {
                    Button { print("Change country setting") }
                        label: { Label("Choose Country", systemImage: "globe") }
                    Button { print("Enable geolocation") }
                        label: { Label("Detect Location", systemImage: "location.circle") }
                }

            VStack(alignment: .center, spacing: 5) {
                TextField("TextField", text: $focusedExample)
                    .focused($isFocused)
                    .multilineTextAlignment(.center)
                Button("Toggle Focus") {
                    isFocused.toggle()
                }
            }
            
            Button("Sheet") { showingSheet = true }
                .sheet(
                    isPresented: $showingSheet,
                    onDismiss: { print("dismissed!") },
                    content: {
                        NavigationView {
                            VStack {
                                Text("Sheet Content")
                                Button("Close") {
                                    showingSheet = false
                                }
                            }
                                .toolbar {
                                    ToolbarItemGroup(placement: .bottomBar) {
                                        Button("First") {
                                            print("Pressed")
                                        }

                                        Button("Second") {
                                            print("Pressed")
                                        }
                                    }
                                }
                        }
                    }
                )

            Button("Popover") { showingPopover = true }
                .popover(isPresented: $showingPopover) {
                    VStack {
                        Text("Popover Content")
                        Button("Close") {
                            showingPopover = false
                        }
                    }
                }

            Button("Toggle Status Bar") {
                hiddenStatusBar = !hiddenStatusBar
            }
                .statusBar(hidden: hiddenStatusBar)

            
            Spacer()
            
        }
    
    }
    
}

struct ModifiersView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiersView()
    }
}


struct Message: Identifiable {
    let id = UUID()
    let text: String
}
