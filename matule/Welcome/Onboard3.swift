//
//  Onboard3.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

struct Onboard3: View {
    @Binding var selectedPage: Int
    @State private var countPage = 3
    var body: some View {
        VStack {
            Spacer()
            Image("preview3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 400)

            Text("У Вас Есть Сила,\nЧтобы")
                .font(.custom("Raleway-Bold", size: 34))
                .multilineTextAlignment(.center)
                .foregroundColor(.veryLightGray)
                .padding(.bottom, 12)
            Text("В вашей комнате много красивых и\nпривлекательных растений")
                .font(.custom("Raleway-Regular", size: 16))
                .foregroundColor(.gray1)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
            Onboards.generateCapsuleForPages(countPage, selectedPage)
            Spacer()
            
        }
        .background(Image("tile3"))
        
    }
}

#Preview {
    @Previewable @State var selectedPage = 2
    Onboard3(selectedPage: $selectedPage)
}
