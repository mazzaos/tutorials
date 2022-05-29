//
//  Item.swift
//  Image Gallery
//
//  Created by Lorenzo Lins Mazzarotto on 29/05/22.
//

import SwiftUI

struct Item: Identifiable {

    let id = UUID()
    let url: URL

}

extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}
