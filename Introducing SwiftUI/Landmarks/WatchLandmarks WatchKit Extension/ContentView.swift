//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Lorenzo Lins Mazzarotto on 08/06/22.
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
