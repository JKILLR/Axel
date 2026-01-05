//
//  MindMapView.swift
//  Axel
//
//  Created on 2026-01-04.
//  iOS 17+, Swift 5.9+
//

import SwiftUI
import SpriteKit

/// UIViewRepresentable wrapper for SKView displaying the mind map
/// Provides SwiftUI integration for the SpriteKit visualization
struct MindMapView: View {

    // MARK: - Properties

    @Bindable var viewModel: MindMapViewModel

    // MARK: - Body

    var body: some View {
        GeometryReader { geometry in
            SpriteKitContainer(
                viewModel: viewModel,
                size: geometry.size
            )
        }
        .ignoresSafeArea(edges: .horizontal)
    }
}

// MARK: - SpriteKit Container

/// UIViewRepresentable that hosts the SKView and MindMapScene
struct SpriteKitContainer: UIViewRepresentable {

    @Bindable var viewModel: MindMapViewModel
    let size: CGSize

    func makeUIView(context: Context) -> SKView {
        let skView = SKView()
        skView.ignoresSiblingOrder = true
        skView.showsFPS = AppConfig.showDebugInfo
        skView.showsNodeCount = AppConfig.showDebugInfo
        skView.backgroundColor = .clear

        let scene = MindMapScene(size: size)
        scene.scaleMode = .resizeFill
        scene.viewModel = viewModel
        skView.presentScene(scene)

        // Store scene reference for updates
        context.coordinator.scene = scene

        return skView
    }

    func updateUIView(_ skView: SKView, context: Context) {
        // Update scene size if geometry changed
        if let scene = context.coordinator.scene {
            scene.size = size
            scene.syncWithViewModel()
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator {
        var scene: MindMapScene?
    }
}

#Preview {
    MindMapView(viewModel: MindMapViewModel())
}
