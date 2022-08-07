//
//  DocsDocument.swift
//  Docs
//
//  Created by Sarah Reichelt on 7/8/2022.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
  static var webCodeProj: UTType {
    UTType(importedAs: "com.domain.webcodeproj")
  }
  static var html: UTType {
    UTType(importedAs: "public.html")
  }
}

struct DocsDocument: FileDocument {
  var text: String

  init(text: String = "Hello, world!") {
    self.text = text
  }

  static var readableContentTypes: [UTType] { [.webCodeProj, .html] }

  init(configuration: ReadConfiguration) throws {
    guard let data = configuration.file.regularFileContents,
          let string = String(data: data, encoding: .utf8)
    else {
      throw CocoaError(.fileReadCorruptFile)
    }
    text = string
  }

  func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
    let data = text.data(using: .utf8)!
    return .init(regularFileWithContents: data)
  }
}

