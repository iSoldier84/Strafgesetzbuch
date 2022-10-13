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
        // ignore empty strings
        guard !text.isEmpty && !searchTerm.isEmpty else { return Text(text) }
        // split: e.g. "Tötung" by "ötu" -> ["T", "ötu", "ng"]
        let parts = text.split(usingRegex: searchTerm, caseInsensitive: caseInsensitiv)
        // reduce all parts into a single text
        return parts.reduce(Text("")) { partialResult, part in
            // ignore if part is not the searched term.
            guard part.lowercased() == searchTerm.lowercased() else { return partialResult + Text(part) }
            // Only the searched items arrive here. Colorize it.
            return partialResult + Text(part).foregroundColor(.yellow).bold()
        }
    }
}

extension String {
    /// Splits self into an array of strings.
    /// Compared to `components(separatedBy:)`, this function still contains the pattern at the correct index.
    /// Splitting "ABC" by "B", returns an array like ["A", "B", "C"].
    ///
    /// - Parameters:
    ///   - pattern: The search term.
    ///   - caseInsensitive: A boolean value indicating if case sensitivity matters.
    ///
    /// - Returns: an array of strings.
    func split(usingRegex pattern: String, caseInsensitive: Bool = false) -> [String] {
        let origin = caseInsensitive ? self.lowercased() : self
        let regexPattern = caseInsensitive ? pattern.lowercased() : pattern

        guard let regex = try? NSRegularExpression(pattern: regexPattern) else { return [] }

        let matches = regex.matches(in: origin, range: NSRange(startIndex..., in: self))
        let splits = [startIndex]
            + matches
                .map { Range($0.range, in: self)! }
                .flatMap { [ $0.lowerBound, $0.upperBound ] }
            + [endIndex]

        return zip(splits, splits.dropFirst())
            .map { String(self[$0 ..< $1]) }
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
