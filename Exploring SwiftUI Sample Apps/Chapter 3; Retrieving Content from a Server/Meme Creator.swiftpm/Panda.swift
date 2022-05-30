//
//  Panda.swift
//  Meme Creator
//
//  Created by Lorenzo Lins Mazzarotto on 30/05/22.
//

import SwiftUI

struct Panda: Codable {
    var description: String
    var imageUrl: URL?

    static let defaultPanda = Panda(description: "Cute Panda",
                                    imageUrl: URL(string: "https://assets.devpubs.apple.com/playgrounds/_assets/pandas/pandaBuggingOut.jpg"))
}
struct PandaCollection: Codable {
    var sample: [Panda]
}
