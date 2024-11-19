//
//  SplashScreen.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

struct SplashScreen: View {
    @State var textSize: CGFloat = 65

    var body: some View {
        HStack {
            Text("matule")
                .font(.custom("Raleway-Bold", size: textSize))
                .textCase(.uppercase)
                .foregroundColor(.white)
            
            Text("me")
                .font(.custom("Raleway-Light", size: textSize-30))
                .textCase(.uppercase)
                .frame(maxHeight: textSize,alignment: .top)
                .foregroundColor(.white)
        }
        .padding(21)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
}

#Preview {
    SplashScreen()
}
