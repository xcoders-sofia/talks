//
//  ImmersiveView.swift
//  MetroMap
//
//  Created by Nikola Kirev on 15.01.25.
//

import SwiftUI
import RealityKit
import RealityKitContent

final private class ViewModel {
    var rootEntity: Entity? = nil
}

struct MetroMapView: View {

    static let stationsQuery = EntityQuery(where: .has(StationComponent.self))

    private var viewModel = ViewModel()
    private let stationDataProvider = StationDataProvider()

    var body: some View {
        RealityView { content, attachments in
            if let immersiveContentEntity = try? await Entity(named: "FullMap", in: realityKitContentBundle) {
                viewModel.rootEntity = immersiveContentEntity
                content.add(immersiveContentEntity)
            }
        } update: { content, attachments in
            viewModel.rootEntity?.scene?.performQuery(Self.stationsQuery).forEach { stationEntity in
                guard let stationComponent = stationEntity.components[StationComponent.self] else {
                    return
                }
                if let labelAttachment = attachments.entity(for: stationComponent.id) {
                    stationEntity.addChild(labelAttachment)
                    labelAttachment.setPosition([0.0, 0.2, 0.0], relativeTo: stationEntity)
                }
            }
        } attachments: {
            ForEach(stationDataProvider.stations) { station in
                Attachment(id: station.id) {
                    InfoView(name: station.name,
                             nextTrainIn: station.nextTrainIn,
                             color: station.lines.first?.color ?? .red)
                }
            }
        }
    }
}

#Preview(immersionStyle: .mixed) {
    MetroMapView()
        .environment(AppModel())
}
