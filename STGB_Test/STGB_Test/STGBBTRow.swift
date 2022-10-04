//
//  STGBBTRow.swift
//  STGB_Test
//
//  Created by Peter Oertig on 04.10.22.
//

import SwiftUI

struct Part2: View {
    var gesetzestextSTGBBT: GesetzestextSTGBBT
    
    @Binding var searchTerm: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Group {
                VStack(alignment: .leading, spacing: 0.0) {
                    HighlightedText(gesetzestextSTGBBT.buch, searchTerm: self.searchTerm)
                        .modifier(BuchTeilTitelKapitelAbschnitt())
//                        .padding(gesetzestextSTGBBT.buch.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.teil, searchTerm: self.searchTerm)
                        .modifier(BuchTeilTitelKapitelAbschnitt())
//                        .padding(gesetzestextSTGBBT.teil.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.titel, searchTerm: self.searchTerm)
                        .modifier(BuchTeilTitelKapitelAbschnitt())
//                        .padding(gesetzestextSTGBBT.titel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.kapitel, searchTerm: self.searchTerm)
                        .modifier(BuchTeilTitelKapitelAbschnitt())
//                        .padding(gesetzestextSTGBBT.kapitel.isEmpty ? -20.0 : 0)
                    
                    HighlightedText(gesetzestextSTGBBT.abschnitt, searchTerm: self.searchTerm)
                        .modifier(BuchTeilTitelKapitelAbschnitt())
//                        .padding(gesetzestextSTGBBT.abschnitt.isEmpty ? -20.0 : 0)
                    
                    HStack {
                        HighlightedText(gesetzestextSTGBBT.artikel, searchTerm: self.searchTerm)
                            .modifier(Artikel())
                            .padding(gesetzestextSTGBBT.artikel.isEmpty ? -20.0 : 0)
                        VStack(alignment: .leading, spacing: 0.0) {
                            HighlightedText(gesetzestextSTGBBT.marginale1, searchTerm: self.searchTerm)
                                .modifier(Marginale())
                                .padding(gesetzestextSTGBBT.marginale1.isEmpty ? -20.0 : 0)
                            
                            HighlightedText(gesetzestextSTGBBT.marginale2, searchTerm: self.searchTerm)
                                .modifier(Marginale())
                                .padding(gesetzestextSTGBBT.marginale2.isEmpty ? -20.0 : 0)
                        }
                    }
                    HighlightedText(gesetzestextSTGBBT.absatz0, searchTerm: self.searchTerm)
                        .modifier(Absatz0())
                        .padding(gesetzestextSTGBBT.absatz0.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer3z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer3, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer4z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litaziffer4, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litez, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0lite, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0lite.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litfz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litf, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litf.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0litgz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0litg, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0litg.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz0lithz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz0lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz0lith, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz0lith.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz1z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz1z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz1.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1lita, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1lita.isEmpty ? -20.0 : 0)
                    
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer3z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litaziffer3, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litabisz, searchTerm: self.searchTerm)
                            .modifier(Litbis())
                            .padding(gesetzestextSTGBBT.absatz1litabisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litabis, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litabis.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litb, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litb.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer3z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litbziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litbziffer3, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litbziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litc, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litc.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litcbisz, searchTerm: self.searchTerm)
                            .modifier(Litbis())
                            .padding(gesetzestextSTGBBT.absatz1litcbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litcbis, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litcbis.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litd, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litd.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1lite, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1lite.isEmpty ? -20.0 : 0)
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litez, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lite, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1lite.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1liteziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1liteziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1liteziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1liteziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1liteziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litf, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litf.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litfz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litf, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litf.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litfbisz, searchTerm: self.searchTerm)
                            .modifier(Litbis())
                            .padding(gesetzestextSTGBBT.absatz1litfbisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litfbis, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litfbis.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litg, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litg.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litgz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litg, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litg.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1lith, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1lith.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1lithz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lith, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1lith.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1liti, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1liti.isEmpty ? -20.0 : 0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litiz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1liti, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1liti.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HighlightedText(gesetzestextSTGBBT.marginaleabsatz1litj, searchTerm: self.searchTerm)
                        .modifier(Marginale())
                        .padding(gesetzestextSTGBBT.marginaleabsatz1litj.isEmpty ? -20.0 : 0)
                }
            }
            Group {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litjz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litj, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litj.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litkz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litk, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litk.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litlz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litl, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litl.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litmz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litm, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litm.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litnz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litn, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litn.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litoz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1lito, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1lito.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1litpz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1litpz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1litp, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1litp.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    VStack(alignment: .leading, spacing: 0.0) {
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz1bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz1bis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bislita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1bislita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1bislitb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz1bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz1bislitc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz1bislitc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2.isEmpty ? -20.0 : 0)
                    }
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litabisz, searchTerm: self.searchTerm)
                            .modifier(Litbis())
                            .padding(gesetzestextSTGBBT.absatz2litabisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litabis, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litabis.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litbbisz, searchTerm: self.searchTerm)
                            .modifier(Litbis())
                            .padding(gesetzestextSTGBBT.absatz2litbbisz.isEmpty ? -55.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litbbis, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litbbis.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litez, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lite, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2lite.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litfz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litf, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litf.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litgz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litg, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litg.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2lithz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lith, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2lith.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litiz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litiz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2liti, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2liti.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litjz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litjz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litj, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litj.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litkz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litkz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litk, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litk.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litlz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litlz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litl, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litl.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litmz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litmz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litm, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litm.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litnz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litnz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litn, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litn.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litoz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litoz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lito, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2lito.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litpz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litpz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litp, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litp.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litqz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litqz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litq, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litq.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                }
                }
            Group {
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litrz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litrz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litr, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litr.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2litsz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2litsz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2lits, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2lits.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2littz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2littz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litt, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litt.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2lituz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2lituz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2litu, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2litu.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2bis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2bislita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2bislitb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2bislitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2bislitc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2bislitdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2bislitd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2bislitez, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2bislitez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2bislite, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2bislite.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2terz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2ter, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2ter.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quater, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2quater.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2quaterlitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2quaterlita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2quaterlitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2quaterlitb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz2quaterlitcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quaterlitc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz2quaterlitc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2quinquiesz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2quinquies, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2quinquies.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2sexiesz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2sexiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2sexies, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2sexies.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz2septiesz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz2septiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz2septies, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz2septies.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz3z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz3z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz3.isEmpty ? -20.0 : 0)
                    }
                    
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz3litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz3lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz3litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz3litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz3litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz3litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz3litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz3litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz3litdziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz3litdziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz3litdziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3litdziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz3litdziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz3bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz3bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz3bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz3bis.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz4z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz4z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz4.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litaziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litbziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litbziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litbziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litbziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litbziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz4bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz4bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz4bis.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4bislitaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4bislitaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4bislita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4bislita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz4bislitbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz4bislitbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4bislitb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz4bislitb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz4terz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz4terz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4ter, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz4ter.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz4quaterz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz4quaterz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4quater, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz4quater.isEmpty ? -20.0 : 0)
                    }
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz4quinquiesz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz4quinquiesz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz4quinquies, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz4quinquies.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz5z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz5z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz5.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer1z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer1z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer1, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer1.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer2z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer2z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer2, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer2.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer3z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer3z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer3, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer3.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer4z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer4z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer4, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer4.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer5z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer5z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer5, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer5.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer6z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer6z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer6, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer6.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer7z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer7z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer7, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer7.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer8z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer8z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer8, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer8.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer9z, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer9z.isEmpty ? -40.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litaziffer9, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litaziffer9.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 33.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz5litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz5litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz5litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz5bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz5bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz5bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz5bis.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz6z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz6z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz6.isEmpty ? -20.0 : 0)
                    }
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litaz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litaz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6lita, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6lita.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litbz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litbz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litb, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6litb.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litcz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litcz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litc, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6litc.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                }
                VStack(alignment: .leading, spacing: 0.0) {
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litdz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litdz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litd, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6litd.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litez, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litez.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6lite, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6lite.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litfz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litfz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litf, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6litf.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6litgz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6litgz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6litg, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6litg.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    HStack(alignment: .top, spacing: 0.0) {
                        HighlightedText(gesetzestextSTGBBT.absatz6lithz, searchTerm: self.searchTerm)
                            .modifier(LitZLitZifferZ())
                            .padding(gesetzestextSTGBBT.absatz6lithz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6lith, searchTerm: self.searchTerm)
                            .modifier(Lit())
                            .padding(gesetzestextSTGBBT.absatz6lith.isEmpty ? -20.0 : 0)
                    }
                    .padding(.leading, 13.0)
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz6bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz6bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz6bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz6bis.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz7z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz7z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz7, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz7.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz7bisz, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz7bisz.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz7bis, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz7bis.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz8z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz8z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz8, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz8.isEmpty ? -20.0 : 0)
                    }
                    ZStack(alignment: .topLeading) {
                        HighlightedText(gesetzestextSTGBBT.absatz9z, searchTerm: self.searchTerm)
                            .modifier(AbsatzZ())
                            .padding(gesetzestextSTGBBT.absatz9z.isEmpty ? -20.0 : 0)
                        HighlightedText(gesetzestextSTGBBT.absatz9, searchTerm: self.searchTerm)
                            .modifier(Absatz())
                            .padding(gesetzestextSTGBBT.absatz9.isEmpty ? -20.0 : 0)
                    }
                }
            }
        } //NavigationView
    } //var body
} //Struct STGBBTview

struct Part2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            STGBBTview(searchTerm:(""))
        }
    }
}
