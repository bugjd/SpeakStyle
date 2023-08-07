//
//  SpeakButton.swift
//  
//
//  Created by Jack Delaney on 04/08/2023.
//

import SwiftUI


/// A View that displays a SpeakButton
///
/// This View accepts a string and creates a SpeakButton view.
///```swift
///private var text : String
///var body : some View {
///    SpeakButton(text: text)
///}
///```

public struct SpeakButton: View {
    private var text : String
    
    
    /// Creates a SpeakButton view with the desired text for display in button and on tap through text to speech.
    ///
    /// - Parameter text : The text you want displayed in the SpeakButton and spoken to the user upon their tapping on the SpeakButton
    public init(text : String) {
        self.text = text
    }

    public var body: some View {
        Label(text, systemImage: "speaker.1.fill").labelStyle(.titleAndIcon).frame(maxHeight: 1).padding().foregroundColor(.white).background(Color.blue).cornerRadius(20).speakable(withText: text)

    }
}


