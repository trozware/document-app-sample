//
//  ContentView.swift
//  Docs
//
//  Created by Sarah Reichelt on 7/8/2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DocsDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DocsDocument()))
    }
}
