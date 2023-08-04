//
//  SpeakModifier.swift
//  
//
//  Created by Jack Delaney on 04/08/2023.
//

import SwiftUI
import AVFoundation

struct SpeakModifier: ViewModifier {
    var wordToSpeak : String
    let avSpeechSynthesizer = AVSpeechSynthesizer()
    
    func body(content: Content) -> some View {
        Button(action : {
            self.speakWord()
        }) {
            content
        }
    }
    
    private func speakWord() {
        let avSpeechUtterance = AVSpeechUtterance(string : wordToSpeak)
        avSpeechUtterance.voice = AVSpeechSynthesisVoice(language: "en-IE")
        avSpeechUtterance.rate = 0.5
        avSpeechSynthesizer.speak(avSpeechUtterance)
        
    }
}

extension View {
    func speakable(withText wordToSpeak: String) -> some View {
        modifier(SpeakModifier(wordToSpeak: wordToSpeak ))
    }
}
