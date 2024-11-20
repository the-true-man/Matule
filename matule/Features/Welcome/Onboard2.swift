//
//  Onboard2.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

struct Onboard2: View {
    @Binding var selectedPage: Int
    @State private var countPage = 3
    
    var body: some View {
        VStack {
#warning("Лишний Spacer")
           // Spacer()

            Image("preview2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 400)
            Text("Начнем\nпутешествие")
                .raleway(size: 34, weight: .bold)
                .foregroundColor(.veryLightGray)
                .multilineTextAlignment(.center)
                .padding(.bottom, 12)
            Text("Умная, великолепная и модная\nколлекция Изучите сейчас")
                .raleway(size: 16)
                .foregroundColor(.gray1)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
            Onboards.generateCapsuleForPages(countPage, selectedPage)
            
#warning("Лишний Spacer")
            // Spacer()

        }
        .background(Image("tile2"))
    }
}

#Preview {
    @Previewable @State var selectedPage: Int = 1
    Onboard2(selectedPage: $selectedPage)
}