//
//  HelperFunctions.swift
//  STGB
//
//  Created by Peter Oertig on 23.07.20.
//  Copyright © 2020 Peter Oertig. All rights reserved.
//

import SwiftUI
import Foundation
import Combine



struct HighlightedText: View {
let text: String
let searchTerm: String
let caseInsensitiv: Bool

init(_ text: String, searchTerm: String, caseInsensitiv: Bool = true) {
    self.text = text
    self.searchTerm = searchTerm
    self.caseInsensitiv = caseInsensitiv
}

var body: some View {
    guard  let regex = try? NSRegularExpression(pattern: NSRegularExpression.escapedPattern(for: searchTerm).trimmingCharacters(in: .whitespacesAndNewlines).folding(options: .regularExpression, locale: .current), options: caseInsensitiv ? .caseInsensitive : .init()) else {
        return Text(text)
    }
   let range = NSRange(location: 0, length: text.count)
            let matches = regex.matches(in: text, options: .withTransparentBounds, range: range)

            return text.enumerated().map { (char) -> Text in
                guard matches.filter( {
                    $0.range.contains(char.offset)
                }).count == 0 else {
                    return Text( String(char.element) ).foregroundColor(.yellow).fontWeight(.bold)
                }
                return Text( String(char.element) )

            }.reduce(Text("")) { (a, b) -> Text in
                return a + b
            }
        }
    }

// Custom Modifiers
struct BuchTeilTitelKapitelAbschnitt: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding(.bottom, 5.0)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct Artikel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct Marginale: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct Absatz0: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.trailing)
            .padding(.vertical, 5.0)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct LitZLitZifferZ: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.trailing)
            .frame(width: 30.0, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct Litbis: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.trailing)
            .frame(width: 53.0, alignment: .leading)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct Lit: ViewModifier {
    func body(content: Content) -> some View {
        content
            .offset(x: -10)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct AbsatzZ: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption)
            .padding(.vertical, 5.0)
            .offset(y: -3)
            .fixedSize(horizontal: false, vertical: true)
    }
}
struct Absatz: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 5.0)
            .fixedSize(horizontal: false, vertical: true)
    }
}
