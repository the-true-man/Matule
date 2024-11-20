//
//  Onboard1.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//
import SwiftUI


struct Onboard1: View {
    @Binding var selectedPage: Int
    @State private var countPage = 3
    var body: some View {
        VStack{
            Spacer()
            
            Text("добро\nпожаловать")
                .textCase(.uppercase)
                .font(.custom("Raleway-Black", size: 30))
                .multilineTextAlignment(.center)
                .foregroundColor(.veryLightGray)
                .offset(y: -60)
                .frame(maxWidth: .infinity)
            Image("preview1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 340, alignment: .trailing)
            
            
            Onboards.generateCapsuleForPages(countPage, selectedPage)
            
            Spacer()
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("tile1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .offset(y: -25)
        )
    }
    
}

#Preview {
    @Previewable @State var selectedPage = 0
    Onboard1(selectedPage: $selectedPage)
}
