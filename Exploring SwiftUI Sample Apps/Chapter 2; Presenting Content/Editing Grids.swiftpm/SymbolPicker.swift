//
//  SymbolPicker.swift
//  Editing Grids
//
//  Created by Lorenzo Lins Mazzarotto on 29/05/22.
//

import SwiftUI

struct SymbolPicker: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var name: String?

    let columns = Array(repeating: GridItem(.flexible()), count: 4)

    let pickableItems = [
        "house.fill",
        "sun.max.fill",
        "cloud.rain.fill",
        "pawprint.fill",
        "lungs.fill",
        "face.smiling",
        "gear",
        "allergens",
        "bolt.heart",
        "ladybug.fill",
        "bus.fill",
        "bicycle.circle",
        "faceid",
        "gamecontroller.fill",
        "timer",
        "eye.fill",
        "person.icloud",
        "tortoise.fill",
        "hare.fill",
        "leaf.fill",
        "wand.and.stars",
        "globe.americas.fill",
        "globe.europe.africa.fill",
        "globe.asia.australia.fill",
        "hands.sparkles.fill",
        "hand.draw.fill",
        "waveform.path.ecg.rectangle.fill",
        "gyroscope",

    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(pickableItems, id: \.self) { item in
                    Button {
                        self.name = item
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: item)
                            .resizable()
                            .scaledToFit()
                            .symbolRenderingMode(.hierarchical)
                            .foregroundColor(.accentColor)
                            .ignoresSafeArea(.container, edges: .bottom)
                    }
                    .padding()
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct SymbolPicker_Previews: PreviewProvider {
    static var previews: some View {
        SymbolPicker(name: .constant(nil))
    }
}
