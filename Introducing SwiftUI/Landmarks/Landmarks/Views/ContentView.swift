//
//  ContentView.swift
//  Landmarks
//
//  Created by Lorenzo Lins Mazzarotto on 30/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
