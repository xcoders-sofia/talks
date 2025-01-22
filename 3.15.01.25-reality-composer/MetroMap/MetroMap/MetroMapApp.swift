//
//  MetroMapApp.swift
//  MetroMap
//
//  Created by Nikola Kirev on 15.01.25.
//

import SwiftUI
import RealityKitContent

@main
struct MetroMapApp: App {

    @State private var appModel = AppModel()

    init() {
        RealityKitContent.StationComponent.registerComponent()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
        }

        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            MetroMapView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(selection: .constant(.mixed), in: .mixed)
     }
}
