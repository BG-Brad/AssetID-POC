//
//  ContentView.swift
//  AssetID POC
//
//  Created by Brad Scott on 5/25/21.
// Property and Copyright of Black Glove Inc.
//

import SwiftUI
import CoreNFC

struct ContentView: View {
    @State var data = ""
    
    
    var body: some View {
        VStack {
            Text(data)
            nfcButton(data: self.$data).frame(width: 100, height: 100)
        }
    }
}




