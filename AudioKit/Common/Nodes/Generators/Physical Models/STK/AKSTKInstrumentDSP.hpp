// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

#pragma once

#include "Instrmnt.h"
#include "AKDSPBase.hpp"

/// Common base class for STK instruments.
class AKSTKInstrumentDSP : public AKDSPBase {

public:

    virtual stk::Instrmnt* getInstrument() = 0;

    void handleMIDIEvent(AUMIDIEvent const& midiEvent) override;

    void process(AUAudioFrameCount frameCount, AUAudioFrameCount bufferOffset) override;

};
