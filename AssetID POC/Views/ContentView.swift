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
        ZStack {
            Image("multi")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("Logo_trans")
                        .resizable()
                        .frame(width: 50, height: 50)
                        // .padding()
                        .aspectRatio(contentMode: .fit)
                    HStack {
                        Text("Black")
                            .font(Font.custom("BigCityGrotesquePro-Regular", size: 18))
                            .foregroundColor(.black)
                        Text("Glove")
                            .font(Font.custom("BigCityGrotesquePro-Bold", size: 18))
                            .foregroundColor(.black)
                            .offset(x: -8)
                    }
                }.padding()
                .padding(.top, 30)
                //  Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "wave.3.forward.circle")
                            .resizable()
                            .frame(width: 70, height: 55)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .opacity(0.8)
                            .overlay(nfcButton(data: self.$data).frame(width: 50, height: 50) )
                        
                        Text("Tap To Scan NFC Tag")
                            .font(Font.custom("BigCityGrotesquePro-Regular", size: 18))
                            .foregroundColor(.black)
                    }
                    Spacer()
                    VStack {
                        Image(systemName: "qrcode.viewfinder")
                            .resizable()
                            .frame(width: 55, height: 55)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.black)
                            .opacity(0.8)
                        //  .overlay(nfcButton(data: self.$data).frame(width: 50, height: 50) )
                        Text("Tap Scan QR Code")
                            .font(Font.custom("BigCityGrotesquePro-Regular", size: 18))
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
}




