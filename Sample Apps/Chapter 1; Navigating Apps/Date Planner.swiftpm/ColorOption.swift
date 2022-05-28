//
//  ColorOption.swift
//  Date Planner
//
//  Created by Lorenzo Lins Mazzarotto on 28/05/22.
//

import SwiftUI

struct ColorOptions {
    static var all: [Color] = [
        .primary,
        .gray,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .cyan,
        .indigo,
        .purple,
    ]

    static var `default` : Color = Color.primary

    static func random() -> Color {
        if let element = ColorOptions.all.randomElement() {
            return element
        } else {
            return .primary
        }

    }
}
