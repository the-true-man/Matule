//
//  WelcomeViews.swift
//  matule
//
//  Created by Евгений Михайлов on 20.11.2024.
//

import SwiftUI

struct WelcomeViews: View {
    @State private var isLoading = true

    var body: some View {
        ZStack{
            LinearGradient(colors: [.darkBlue, .lightBlue], startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(.all)
            if isLoading {
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
    WelcomeViews()
}
