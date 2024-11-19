//
//  ContentView.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SplashScreen()
            .background(LinearGradient(colors: [.darkBlue, .lightBlue], startPoint: .bottom, endPoint: .top))
    }
}

#Preview {
    ContentView()
}
