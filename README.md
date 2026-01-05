# Axel

A thought-mapping iOS app with AI-powered organization. Capture ideas as they flow, visualize connections, and let Axel help you find patterns in your thinking.

## Features

### Phase 0 (Current)
- Instant thought capture with minimal friction
- 2D mind map visualization with SpriteKit
- Drag-to-move nodes with position persistence
- Thought categories with visual distinction
- Pan and zoom navigation
- SwiftData local persistence

### Planned Features
- **Phase 1**: Force-directed graph layout, AI acknowledgments (Claude Haiku)
- **Phase 2**: Auto-categorization, semantic search, AI clustering (Claude Sonnet)
- **Phase 3**: Voice input via WhisperKit
- **Phase 4**: Cloud sync with Supabase

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+

## Architecture

| Layer | Technology |
|-------|------------|
| UI | SwiftUI |
| Visualization | SpriteKit |
| Persistence | SwiftData |
| AI (future) | Claude API |
| Voice (future) | WhisperKit |
| Backend (future) | Supabase |

## Project Structure

```
Axel/
├── App/
│   ├── AxelApp.swift          # App entry point
│   └── ContentView.swift       # Root view with tab navigation
├── Models/
│   ├── Thought.swift           # Core thought entity
│   ├── Connection.swift        # Edge between thoughts
│   ├── Cluster.swift           # AI-generated groupings
│   └── ThoughtCategory.swift   # Category enum with colors
├── Views/
│   ├── Input/
│   │   └── ThoughtInputView.swift
│   ├── List/
│   │   └── ThoughtListView.swift
│   └── MindMap/
│       └── MindMapView.swift
├── Graph/
│   ├── MindMapScene.swift      # SpriteKit scene
│   ├── ThoughtNodeSprite.swift # Node visualization
│   └── ConnectionEdgeSprite.swift
├── ViewModels/
│   └── MindMapViewModel.swift  # State management
├── Services/
│   └── DataService.swift       # Persistence layer
└── Configuration/
    └── AppConfig.swift         # Feature flags
```

## Setup

1. Clone this repository
2. Open in Xcode 15+
3. Create a new iOS App project named "Axel"
4. Copy the Swift files into the project
5. Build and run on iOS 17+ simulator or device

## License

Private - All rights reserved
