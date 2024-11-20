//
//  SplashScreen.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

#warning("SplashScreen?")

/*
 
SplashScreen так не создается, на чемпионате такое не засчитают
Нажимаешь правой кнопкой мыши в менеджере файлов, выбираешь New File From Templates и выбираешь Launch Screen - таким образос создается SplashScreen
 
 */

struct SplashScreen: View {
    @State var textSize: CGFloat = 65

    var body: some View {
        HStack {
            Text("matule")
                .raleway(size: textSize, weight: .bold)
                .textCase(.uppercase)
                .foregroundColor(.white)
            
            Text("me")
                .raleway(size: textSize - 30, weight: .light)
                .textCase(.uppercase)
                .frame(maxHeight: textSize, alignment: .top)
                .foregroundColor(.white)
        }
        .padding(21)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
    }
}

#Preview {
    SplashScreen()
}
