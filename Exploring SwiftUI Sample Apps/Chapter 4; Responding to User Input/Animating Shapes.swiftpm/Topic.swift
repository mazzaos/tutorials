//
//  Topic.swift
//  Animating Shapes
//
//  Created by Lorenzo Lins Mazzarotto on 01/06/22.
//


import SwiftUI

struct Topic: Identifiable, Hashable {
    var id : UUID = UUID()
    var title : String
    var description: String
    var systemSymbol : String
    var destination : Destination
}

