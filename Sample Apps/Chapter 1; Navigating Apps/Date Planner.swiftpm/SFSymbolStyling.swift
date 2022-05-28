//
//  SFSymbolStyling.swift
//  Date Planner
//
//  Created by Lorenzo Lins Mazzarotto on 28/05/22.
//

import SwiftUI

struct SFSymbolStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .imageScale(.large)
            .symbolRenderingMode(.monochrome)
    }
}

extension View {
    func sfSymbolStyling() -> some View {
        modifier(SFSymbolStyling())
    }
}
