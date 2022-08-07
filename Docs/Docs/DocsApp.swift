//
//  DocsApp.swift
//  Docs
//
//  Created by Sarah Reichelt on 7/8/2022.
//

import SwiftUI

@main
struct DocsApp: App {
  var body: some Scene {
    DocumentGroup(newDocument: DocsDocument()) { file in
      ContentView(document: file.$document)
    }
  }
}
