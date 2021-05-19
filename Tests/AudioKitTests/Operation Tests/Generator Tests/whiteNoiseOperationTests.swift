// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

import AudioKit
import XCTest

class WhiteNoiseOperationTests: XCTestCase {

    func testParameterSweep() {
        let engine = AudioEngine()
        let noise = OperationGenerator {
            let line = Operation.lineSegment(
                trigger: Operation.metronome(),
                start: 0,
                end: 1,
                duration: 1.0)
            return Operation.whiteNoise(amplitude: line)
        }
        engine.output = noise
        noise.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

}
