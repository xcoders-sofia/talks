import RealityKit

// Ensure you register this component in your app’s delegate using:
// StationComponent.registerComponent()
public struct StationComponent: Component, Codable {
    // This is an example of adding a variable to the component.
    public var id: String = ""

    public init() {
    }
}
