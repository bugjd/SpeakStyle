//
//  SpeakButton.swift
//  
//
//  Created by Jack Delaney on 04/08/2023.
//

import SwiftUI

struct SpeakButton: View {
    @Binding var text : String
    var body: some View {
        Label(text, systemImage: "speaker.1.fill").labelStyle(.titleAndIcon).frame(maxHeight: 1).padding().foregroundColor(.white).background(Color.blue).cornerRadius(20).speakable(withText: text)

    }
}

struct SwiftUIView_2_Previews: PreviewProvider {
    static var previews: some View {
        SpeakButton(text: .constant("Jane"))
    }
}
