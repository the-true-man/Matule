//
//  WelcomeViews.swift
//  matule
//
//  Created by Евгений Михайлов on 20.11.2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isLoading = true

    var body: some View {
#warning("ZStack лучше не использовать, для того, чтобы задать задний фон используй .background")
        
        ZStack{
            LinearGradient(colors: [.darkBlue, .lightBlue], startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(.all)
            if isLoading {
#warning("Такой реализации SplashScreen'а не должно быть, не засчитают")
                SplashScreen()
                    .onAppear() {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                isLoading.toggle()
                            }
                        }
                    }
            }
            else{
                Onboards()
                    .transition(.opacity)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
