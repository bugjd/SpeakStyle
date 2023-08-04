//
//  SpeakButton.swift
//  
//
//  Created by Jack Delaney on 04/08/2023.
//

import SwiftUI

public struct SpeakButton: View {
    private var text : String
    
    public init(text : String) {
        self.text = text
    }

    public var body: some View {
        Label(text, systemImage: "speaker.1.fill").labelStyle(.titleAndIcon).frame(maxHeight: 1).padding().foregroundColor(.white).background(Color.blue).cornerRadius(20).speakable(withText: text)

    }
}


