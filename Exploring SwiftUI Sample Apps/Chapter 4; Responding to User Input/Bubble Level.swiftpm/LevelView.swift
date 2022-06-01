//
//  LevelView.swift
//  Bubble Level
//
//  Created by Lorenzo Lins Mazzarotto on 01/06/22.
//

import SwiftUI

struct LevelView: View {
    @EnvironmentObject var motionDetector: MotionDetector

    var body: some View {
        VStack {
            BubbleLevel()
            OrientationDataView()
                .padding(.top, 80)
        }
        .onAppear {
            motionDetector.start()
        }
        .onDisappear {
            motionDetector.stop()
        }
    }
}

struct LevelView_Previews: PreviewProvider {
    @StateObject static var motionDetector = MotionDetector(updateInterval: 0.01).started()

    static var previews: some View {
        LevelView()
            .environmentObject(motionDetector)
    }
}
