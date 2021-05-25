//
//  LandingPage.swift
//  AssetID POC
//
//  Created by brad on 5/25/21.
//

import SwiftUI

struct LandingPage: View {
    
    let customRegularFont = UIFont(name: "BigCityGrotesquePro-Regular.ttf", size: UIFont.labelFontSize)
    let black = "Black"
    
    var body: some View {
        ZStack{
            Image("multi")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Logo_trans")
                    .resizable()
                    .frame(width: 150, height: 150)
                   // .padding()
                    .aspectRatio(contentMode: .fit)
                HStack {
                Text("Black")
                    .font(Font.custom("BigCityGrotesquePro-Regular", size: 35))
                    .foregroundColor(.black)
                    Text("Glove")
                        .font(Font.custom("BigCityGrotesquePro-Bold", size: 35))
                        .foregroundColor(.black)
                        .offset(x: -8)
                }
            }
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
