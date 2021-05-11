// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/
// This file was auto-autogenerated by scripts and templates at http://github.com/AudioKit/AudioKitDevTools/

import AVFoundation
import CAudioKit

/// Karplus-Strong plucked string instrument.
/// 
public class PluckedString: Node, Triggerable {

    /// Connected nodes
    public var connections: [Node] { [] }

    /// Underlying AVAudioNode
    public var avAudioNode = instantiate(instrument: "pluk")

    /// Specification details for frequency
    public static let frequencyDef = NodeParameterDef(
        identifier: "frequency",
        name: "Variable frequency. Values less than the initial frequency are doubled until greater than that.",
        address: akGetParameterAddress("PluckedStringParameterFrequency"),
        defaultValue: 110,
        range: 0 ... 22_000,
        unit: .hertz)

    /// Variable frequency. Values less than the initial frequency are doubled until greater than that.
    @Parameter(frequencyDef) public var frequency: AUValue

    /// Specification details for amplitude
    public static let amplitudeDef = NodeParameterDef(
        identifier: "amplitude",
        name: "Amplitude",
        address: akGetParameterAddress("PluckedStringParameterAmplitude"),
        defaultValue: 0.5,
        range: 0 ... 1,
        unit: .generic)

    /// Amplitude
    @Parameter(amplitudeDef) public var amplitude: AUValue

    // MARK: - Initialization

    /// Initialize this pluck node
    ///
    /// - Parameters:
    ///   - frequency: Variable frequency. Values less than the initial frequency are doubled until greater than that.
    ///   - amplitude: Amplitude
    ///   - lowestFrequency: This frequency is used to allocate all the buffers needed for the delay. This should be the lowest frequency you plan on using.
    ///
    public init(
        frequency: AUValue = frequencyDef.defaultValue,
        amplitude: AUValue = amplitudeDef.defaultValue,
        lowestFrequency: AUValue = 110
    ) {
        setupParameters()

        self.frequency = frequency
        self.amplitude = amplitude
    }

    // MARK: - Control

    /// Trigger the sound with a set of parameters
    ///
    /// - Parameters:
    ///   - frequency: Frequency in Hz
    ///   - amplitude: Volume
    ///
    public func trigger(frequency: AUValue, amplitude: AUValue = 1) {
        self.frequency = frequency
        self.amplitude = amplitude
        trigger()
    }

}
