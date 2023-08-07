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
    /// This modifier allows you to add text to speak functionality to any SwiftUI view upon tapping it.
    /// 
    /// - Parameter wordToSpeak : The word you want spoken.
    public func speakable(withText wordToSpeak: String) -> some View {
        modifier(SpeakModifier(wordToSpeak: wordToSpeak ))
    }
}
