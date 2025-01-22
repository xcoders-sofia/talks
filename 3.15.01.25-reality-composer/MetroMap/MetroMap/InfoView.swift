//
//  InfoView.swift
//  MetroMap
//
//  Created by Nikola Kirev on 15.01.25.
//

import SwiftUI

struct InfoView: View {

    let name: String
    let nextTrainIn: UInt
    let color: Color

    @State private var showingMoreInfo = false

    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.system(size: 48, weight: .semibold))
                .padding()
            if showingMoreInfo {
                Text("Следващ влак след:")
                    .font(.system(size: 36, weight: .regular))
                Text("\(nextTrainIn) минути")
                    .font(.system(size: 88, weight: .bold))
            }
        }
        .frame(maxWidth: 400)
        .padding(24)
        .background(color.opacity(0.2))
        .glassBackgroundEffect(in: .rect(cornerRadius: 25))
        .opacity(showingMoreInfo ? 1 : 0.5)
        .onTapGesture {
            withAnimation(.spring) {
                showingMoreInfo.toggle()
            }
        }
    }
}

#Preview {
    InfoView(name: "Витоша", nextTrainIn: 8, color: .blue)
}
