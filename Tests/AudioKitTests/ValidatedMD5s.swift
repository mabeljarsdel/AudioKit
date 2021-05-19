import AVFoundation
import XCTest

extension XCTestCase {
    func testMD5(_ buffer: AVAudioPCMBuffer) {
        let localMD5 = buffer.md5
        let name = self.description
        XCTAssert(validatedMD5s[name] == buffer.md5, "\nFAILEDMD5 \"\(name)\": \"\(localMD5)\",")
    }
}

let validatedMD5s: [String: String] = [
    "-[AmplitudeEnvelopeTests testAttack]": "d854eb2e2033f57db8eaece7352158a1",
    "-[AmplitudeEnvelopeTests testDecay]": "049f077cfac89eb544bba6386ef3cd41",
    "-[AmplitudeEnvelopeTests testDefault]": "2a0becc83d69bbf8635ab21c2e53bbe3",
    "-[AmplitudeEnvelopeTests testDoubleStop]": "584a2da667f8e83f085addf29e8b10bf",
    "-[AmplitudeEnvelopeTests testParameters]": "d13574ced5796c3dcf56ce14a231b9a7",
    "-[AmplitudeEnvelopeTests testRelease]": "584a2da667f8e83f085addf29e8b10bf",
    "-[AmplitudeEnvelopeTests testSustain]": "eab230014d499b2d8c82781d2b645cdc",
    "-[AmplitudeTapTests testDefault]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AmplitudeTapTests testLeftStereoMode]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AmplitudeTapTests testRightStereoMode]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AmplitudeTapTests testPeakAnalysisMode]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AppleSamplerTests testAmplitude]": "70854de319db480ca802311a5a5c3fca",
    "-[AppleSamplerTests testAppleSamplerPolyphonicInheritance]": "0c1f8a827fe39440838f741c2113f0df",
    "-[AppleSamplerTests testPan]": "8c2e87cae03e7438b79db02e63875bfb",
    "-[AppleSamplerTests testSamplePlayback]": "2e3998ba717871f980d01749e3ee065f",
    "-[AppleSamplerTests testStop]": "c7944b63823d70232b491b3e474f9cca",
    "-[AppleSamplerTests testVolume]": "ae2ac7a1a8403a5a2c1f060fa014fee5",
    "-[AudioPlayerTests testBasic]": "feb1367cee8917a890088b8967b8d422",
    "-[AudioPlayerTests testGetCurrentTime]": "af7c73c8c8c6f43a811401246c10cba4",
    "-[AudioPlayerTests testEngineRestart]": "b0dd4297f40fd11a2b648f6cb3aad13f",
    "-[AudioPlayerTests testLoop]": "4288a0ae8722e446750e1e0b3b96068a",
    "-[AudioPlayerTests testPlayAfterPause]": "ff480a484c1995e69022d470d09e6747",
    "-[AudioPlayerTests testScheduleFile]": "ba487f42fa93379f0b24c7930d51fdd3",
    "-[AudioPlayerTests testSeek]": "3bba42419e6583797e166b7a6d4bb45d",
    "-[AudioPlayerTests testVolume]": "ba487f42fa93379f0b24c7930d51fdd3",
    "-[AutomationCurveTests testCombingSettingParameterWithRamping]": "39cae1a8a64588668cf311739097c3fc",
    "-[AutoWahOperationTests testAmplitude]": "362e3f261952f0cc4df9713e40077f0f",
    "-[AutoWahOperationTests testWah]": "21f4d726d3145eeedd1861661fa5024d",
    "-[BalancerTests testDefault]": "26e2c62078ee266c120677b7386ab292",
    "-[ClarinetTest testClarinet]": "1db0a9fa9901af443d404e7e18676cc0",
    "-[ClarinetTest testVelocity]": "26efd42f23e15319228f423373cac169",
    "-[CompressorTests testAttackTime]": "bcd0e52fc85be5c27568fa5bc2880c8c",
    "-[CompressorTests testDefault]": "820f969ed718ef77b0e472ef0d912325",
    "-[CompressorTests testHeadRoom]": "ae14f1fe5695e76bcb3882b279213668",
    "-[CompressorTests testMasterGain]": "482dab4495469eb41face0fc63651239",
    "-[CompressorTests testParameters]": "a69701ee2b399d88f611f47716e71802",
    "-[CompressorTests testThreshold]": "f5b9440c5a2b3d9eeb5843f9705f3688",
    "-[ConvolutionTests testConvolution]": "d585f94eba7aedafd7987c68af78ff75",
    "-[DCBlockOperationTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[DelayOperationTests testDefault]": "ad1b433de4ec591cecb4c6ab4d91b7a5",
    "-[DelayOperationTests testFeedback]": "9da21169977f6ed9bd562820c2e8939f",
    "-[DelayOperationTests testParameters]": "615ed5bd20fdf38cc9710edcec7921fe",
    "-[DelayOperationTests testTime]": "9d3f5e4fb8b494e9c31afe05a5b8747b",
    "-[DripTests testDampingFactor]": "19a31b71aa62fbc19de4d1a7993482b1",
    "-[DripTests testDefault]": "290084f9fba0a691b12c306571a3fee2",
    "-[DripTests testIntensity]": "a1cf4153c34661d789ef00e0f2886e24",
    "-[DrumSynthTests testSynthKick]": "bc0323f2529a42eb1c30245cae4662cf",
    "-[DrumSynthTests testSynthSnare]": "8642993a77e40ce3d3d505b8e0782205",
    "-[DryWetMixerTests testBalance0]": "54fb40c15242198d45b31b6a79187d07",
    "-[DryWetMixerTests testBalance1]": "4f77a76b108ab1c6e4a83c64bed94820",
    "-[DryWetMixerTests testDefault]": "9c5d2ee60fc0d012f59dc24e5097b305",
    "-[DryWetMixerTests testDetachWhileHavingAnInputMixer]": "9df204fbc98bb8965081cb30a89715fc",
    "-[DryWetMixerTests testDuplicateInput]": "54fb40c15242198d45b31b6a79187d07",
    "-[DynamicOscillatorTests testAmpitude]": "86497903abc5f53ef15fecf5660709bb",
    "-[DynamicOscillatorTests testDefault]": "7a3dc1fdc7f7c4d113ba9d1119143e67",
    "-[DynamicOscillatorTests testDetuningMultiplier]": "b9caf0d0e39aa5bf6073f861ff7cdd23",
    "-[DynamicOscillatorTests testDetuningOffset]": "ee8fc07672ed022a4c86146b18a38aca",
    "-[DynamicOscillatorTests testFrequency]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[DynamicOscillatorTests testParametersSetAfterInit]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[DynamicOscillatorTests testParameters]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[DynamicOscillatorTests testRamping]": "5336499be4b3eb5284e1d929c612341b",
    "-[DynamicOscillatorTests testNewAutomationFrequency]": "5c8c218d2c21e8c436493bb09a80a47a",
    "-[DynamicOscillatorTests testNewAutomationAmplitude]": "b8e89a1380f3159979b37d3f8dff441e",
    "-[DynamicOscillatorTests testNewAutomationMultiple]": "3b499b52ae246e9c0403bc4f79b0e050",
    "-[DynamicOscillatorTests testNewAutomationDelayed]": "805e616c4ee5971d698c79982d502227",
    "-[DynamicOscillatorTests testSetWavetable]": "b8a90867e0736e04de7dd6e4794ec494",
    "-[DynamicOscillatorTests testGetWavetableValues]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[DynamicOscillatorTests testWavetableUpdateHandler]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[DynamicsProcessorTests testDefault]": "70fa0fb4d94ccb4a36fdd55be270d0e8",
    "-[FFTTapTests testBasic]": "31521ba97588f48cb20505205b0cd8f3",
    "-[FFTTapTests testWithoutNormalization]": "df0a73e2987dc2490ff17c0de477fbf3",
    "-[FFTTapTests testWithZeroPadding]": "31521ba97588f48cb20505205b0cd8f3",
    "-[FMOscillatorOperationTests testFMOscillatorOperation]": "691ee890bdeee00f0b5e79d471fd82ee",
    "-[FaderTests testBypass]": "54fb40c15242198d45b31b6a79187d07",
    "-[FaderTests testDefault]": "54fb40c15242198d45b31b6a79187d07",
    "-[FaderTests testFlipStereo]": "8dab5ffc9177b93149e2db72693957ec",
    "-[FaderTests testFlipStereoThrice]": "8dab5ffc9177b93149e2db72693957ec",
    "-[FaderTests testFlipStereoTwice]": "6b8ab871601222e48b3a4830a4b93ca7",
    "-[FaderTests testGain]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[FaderTests testMany]": "54fb40c15242198d45b31b6a79187d07",
    "-[FaderTests testMixToMono]": "0472c301b0d087e7b65b24b378ea68ea",
    "-[FaderTests testParameters]": "03a9f6d828add3a7377e1ac4cae886cf",
    "-[FaderTests testParameters2]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[FlatFrequencyResponseReverbTests testLoopDuration]": "b52e5fe292fae790c8ebf997347774a3",
    "-[FluteTests testFlute]": "264beca825da812550d7b7b06fbaf3ee",
    "-[FluteTests testVelocity]": "f8596d2c7dedccd52c0b60adc4d84821",
    "-[MandolinStringTests testAmplitude]": "6eb67e5c2defc9e1e51c1df6f9310d60",
    "-[MandolinStringTests testMandolin]": "f219d8ba04a3cc19c4235c651ecc9367",
    "-[MetalBarTests testDefault]": "581849d96fa6f62daeba2534c2efc17c",
    "-[NodeTests testAutomationAfterDelayedConnection]": "f5f2cf536578d5a037c88d2cd458eb10",
    "-[NodeTests testDisconnect]": "814872816a611dfd8d3ac8078c8e2daf",
    "-[NodeTests testDynamicConnection]": "56705e42509ee347224ffe2da5a20404",
    "-[NodeTests testDynamicConnection2]": "d1e09a5effb8e6a0975fa455786a9f4a",
    "-[NodeTests testDynamicConnection3]": "8bc9622131aee964736a171418ae5f94",
    "-[NodeTests testDynamicOutput]": "758f51518545b68c467f23296c741377",
    "-[NodeTests testNodeBasic]": "4a0880ad458d89a08afe85882a18f82c",
    "-[NodeTests testNodeConnection]": "ba6ade71600adc39ac3c2ad96725679e",
    "-[NodeTests testNodeDetach]": "814872816a611dfd8d3ac8078c8e2daf",
    "-[NodeTests testTwoEngines]": "42b1eafdf0fc632f46230ad0497a29bf",
    "-[OperationGeneratorParametersTests testSetParameters]": "0b20180a92ea138d82977d4d38cf9524",
    "-[OperationGeneratorParametersTests testSetParameters2]": "90252f37c84a34a81155398a72cc172b",
    "-[OperationGeneratorParametersTests testSetParameters3]": "3bc8f1dd24129853970f9271d6694795",
    "-[OscillatorAutomationTests testNewAutomationAmplitude]": "de84a09903129c3c22cc035cfd53ff05",
    "-[OscillatorAutomationTests testNewAutomationDelayed]": "170f682ea6ad60e6a94ad48aba159efe",
    "-[OscillatorAutomationTests testNewAutomationFrequency]": "5c8c218d2c21e8c436493bb09a80a47a",
    "-[OscillatorAutomationTests testNewAutomationMultiple]": "c1840e8045b8d976ca0aaddb984da4c5",
    "-[ParameterAutomationTests testDelayedAutomation]": "b4c68d2afd4fdbb5074b7ddc655ea5c6",
    "-[PeakLimiterTests testAttackTime]": "1d99a1fb9af935b0fb99a55e5fd2b156",
    "-[PeakLimiterTests testDecayTime]": "d17a29df2948e5c55f99f2120c99961b",
    "-[PeakLimiterTests testDefault]": "d17a29df2948e5c55f99f2120c99961b",
    "-[PeakLimiterTests testParameters]": "991a291b33cf1b3f89f30d94e473a688",
    "-[PeakLimiterTests testPreGain]": "ba69f3bbbee341054e3a2c5a76d3096f",
    "-[PhaseLockedVocoderTests testDefault]": "d3522d2e9cad9467740cbcb3624887f2",
    "-[PinkNoiseOperationTests testParameterSweep]": "ac20cbf3b0342430bab4350de2619feb",
    "-[PitchTapTests testBasic]": "10e7831ee61299f51dd0ef03fa50bb25",
    "-[PluckedStringOperationTests testDefault]": "bdef4981144f808c1a375a277f4da66f",
    "-[PluckedStringTests testDefault]": "9e2d3aa3b50fa53a43b798901f0cb0e5",
    "-[ResonantFilterOperationTests testParameters1]": "084201aaf20c67dfc4867e0bae54e551",
    "-[ResonantFilterOperationTests testParameters2]": "50e835fabdf04c28c427bed060a0b674",
    "-[ResonantFilterOperationTests testParameters3]": "ec695c4db1e1e2714a4a908f9d95059a",
    "-[ReverbTests testCathedral]": "fb93ca1d8a6ece8686b35ea0610c002f",
    "-[ReverbTests testDefault]": "8adbdf9c9a3329aa8677852e4e53273d",
    "-[ReverbTests testSmallRoom]": "bf73d7cb919289688abc633106034f6c",
    "-[ReverberateWithCostelloTests testDefault]": "a123e2df39ef0d5a6161ccb2191b4646",
    "-[RhodesPianoKeyTests testAmplitude]": "d349565cae5618b5d6326f20623d8ea5",
    "-[RhodesPianoKeyTests testRhodesPiano]": "7341d6c60e58433aa7992ee080c297c4",
    "-[RingModulatorTests testDefault]": "ff3d88168749e8258993a1ac9049999d",
    "-[SamplerTests testSampler]": "c37cb5398f1c3e74a9d77d24bbb50d51",
    "-[SequencerTrackTests testLoop]": "dfab5f544f9d714ed0fb95d4e077699b",
    "-[SequencerTrackTests testOneShot]": "8d547bfc6b1c47e82deb53ed6646c389",
    "-[SequencerTrackTests testTempo]": "65f227785671ce944a8cc5ed2b66a4c1",
    "-[SequencerTrackTests testChangeTempo]": "dab1ef7ceb90506a4eee6af31a19a886",
    "-[ShakerTests testShaker]": "709fbb05ec97f539079dd77e8c96bc4d",
    "-[ShakerTests testShakerAmplitude]": "57b501c34d5b4114ff8b1464a6842103",
    "-[ShakerTests testShakerType]": "998478fb4c871a653b296033d2318f4e",
    "-[SmoothDelayTests testDefault]": "2ea423e3049f2b2d14d218f376a4542a",
    "-[SmoothDelayTests testFeedback]": "803a096f54a75509ac7a2e62f9ebc42f",
    "-[SmoothDelayTests testParameters]": "880f77bb6c10256c0889fe330d633cc8",
    "-[SmoothDelayTests testParameterSweep]": "ae10982f9d9a73b198e84820b84682c7",
    "-[SmoothDelayTests testTime]": "eb24180940df02842993b72b274e7e08",
    "-[SynthTests testChord]": "155d8175419836512ead0794f551c7a0",
    "-[SynthTests testMonophonicPlayback]": "77fb882efcaf29c3a426036d85d04090",
    "-[SynthTests testParameterInitialization]": "e27794e7055b8ebdbf7d0591e980484e",
    "-[TableTests testReverseSawtooth]": "01c214265dd49e5ab627e5b4f4d00fe0",
    "-[TableTests testSawtooth]": "7a3dc1fdc7f7c4d113ba9d1119143e67",
    "-[TableTests testSine]": "f4cc261bdf98ae17320f9561941c8664",
    "-[TableTests testTriangle]": "54fb40c15242198d45b31b6a79187d07",
	"-[TableTests testHarmonicWithPartialAmplitudes]": "75d01266f4d35ea0074a1bf469d63f27",
    "-[ThreePoleLowPassFilterOperationTests testParameterSweep]": "57b05266ea3b6e74c4e0d03c58794caa",
    "-[TransientShaperTests testAttackAmount]": "8dc174524e12f04b83fcdece433a9ead",
    "-[TransientShaperTests testDefault]": "9f863d2aac9d2d87d5ed817a882b8a40",
    "-[TransientShaperTests testInputAmount]": "7e15fcadcc69a9a7b5566e6b06c422ce",
    "-[TransientShaperTests testOutputAmount]": "77c84f5cb7886ed24ee746b1c8aae7cd",
    "-[TransientShaperTests testParameters]": "b78e6daa945a07253e5517599850b0b4",
    "-[TransientShaperTests testReleaseAmount]": "9f863d2aac9d2d87d5ed817a882b8a40",
    "-[TriangleTests testParameterSweep]": "65fc18963547c200e7154c987b2c73b7",
    "-[TriangleWaveTests testParameterSweep]": "e7d8cc44420bbf3474ff7fae34e6895b",
    "-[TubularBellsTests testAmplitude]": "3c14777a9e2c94336b7dc349b5ccefc3",
    "-[TubularBellsTests testTubularBells]": "dc87914ab7836f859709c3d84df1d4e5",
    "-[VariableDelayOperationTests testParameterSweep]": "8d4d8ed97e5bb0ee6ad9158337035f16",
    "-[VocalTractOperationTests testParameterSweep]": "e846c8d1a61587825d0c699d162e3cd0",
    "-[WhiteNoiseOperationTests testAmplitude]": "1fdb585751ad480ad39f16cae4589cf7",
    "-[WhiteNoiseOperationTests testParameterSweep]": "f8bf5004f0d3c528b491a65c7db78865",
]
