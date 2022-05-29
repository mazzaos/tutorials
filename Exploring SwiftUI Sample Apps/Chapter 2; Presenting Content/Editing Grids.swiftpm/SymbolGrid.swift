//
//  SymbolGrid.swift
//  Editing Grids
//
//  Created by Lorenzo Lins Mazzarotto on 29/05/22.
//

import SwiftUI

struct SymbolGrid: View {

    private static let initialColumns = 3
    @State private var selectedSymbolName: String?
    @State private var numColumns = initialColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)

    @State private var symbolNames = [
        "tshirt",
        "eyes",
        "eyebrow",
        "nose",
        "mustache",
        "mouth",
        "eyeglasses",
        "facemask",
        "brain.head.profile",
        "brain",
        "icloud",
        "theatermasks.fill",
    ]

    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }

    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(symbolNames, id: \.self) { name in
                        NavigationLink(destination: ItemDetail(symbolName: name)) {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: name)
                                    .resizable()
                                    .scaledToFit()
                                    .symbolRenderingMode(.hierarchical)
                                    .foregroundColor(.accentColor)
                                    .ignoresSafeArea(.container, edges: .bottom)
                                    .cornerRadius(8)

                                if isEditing {
                                    Button {
                                        guard let index = symbolNames.firstIndex(of: name) else { return }
                                        withAnimation {
                                            _ = symbolNames.remove(at: index)
                                        }
                                    } label: {
                                        Image(systemName: "xmark.square.fill")
                                                    .font(Font.title)
                                                    .symbolRenderingMode(.palette)
                                                    .foregroundStyle(.white, Color.red)
                                    }
                                    .offset(x: 7, y: -7)
                                }
                            }
                            .padding()
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .navigationBarTitle("My Symbols")
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolGrid()
    }
}
