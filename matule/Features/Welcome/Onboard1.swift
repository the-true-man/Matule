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
        VStack {
#warning("Лишний Spacer")
            /*
             В данном случае Spacer() не играет никакой роли, все элементы в VStack и так подефолту располоагаются посередине
             */
           // Spacer()
            
            Text("добро\nпожаловать")
                .textCase(.uppercase)
                .raleway(size: 30, weight: .black)
                .multilineTextAlignment(.center)
                .foregroundColor(.veryLightGray)
                .offset(y: -60)
                .frame(maxWidth: .infinity)
            Image("preview1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 340, alignment: .trailing)
            
            
            Onboards.generateCapsuleForPages(countPage, selectedPage)
            
#warning("Лишний Spacer")
            /*
             
             Тоже самое
             
             */
           // Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("tile1")
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
