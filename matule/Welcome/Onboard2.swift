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
            Spacer()

            Image("preview2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 400)
            Text("Начнем\nпутешествие")
                .font(.custom("Raleway-Bold", size: 34))
                .foregroundColor(.veryLightGray)
                .multilineTextAlignment(.center)
                .padding(.bottom, 12)
            Text("Умная, великолепная и модная\nколлекция Изучите сейчас")
                .font(.custom("Raleway-Regular", size: 16))
                .foregroundColor(.gray1)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
            Onboards.generateCapsuleForPages(countPage, selectedPage)
            Spacer()

        }
        .background(Image("tile2"))
    }
}

#Preview {
    @Previewable @State var selectedPage: Int = 1
    Onboard2(selectedPage: $selectedPage)
}
