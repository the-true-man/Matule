//
//  Onboard1.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

struct Onboard1: View {
    @State private var selectedPage = 0
    @State private var countPage = 3
    var body: some View {
        VStack{
            Spacer()
                
            VStack{
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
                    .frame(maxWidth: 410, maxHeight: 340)
                    
                
                generateCapsuleForPages(countPage, selectedPage)
            }
            .background(Image("tile1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y: -25)
                        
            )
            Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Начать")
                        .foregroundColor(.veryDarkGray)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 17)
                        .background(Color.veryLightGray)
                        .clipShape(RoundedRectangle(cornerRadius: 13))
                }
                .padding(.horizontal,20)
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .background(LinearGradient(colors: [.darkBlue, .lightBlue], startPoint: .bottom, endPoint: .top))
        
    }
    func generateCapsuleForPages(_ countPage: Int, _ selectedPage: Int) -> some View {
        HStack(spacing: 10){
            ForEach(0..<countPage){ i in
                Capsule()
                    .fill(selectedPage == i ? .white : .black.opacity(0.3))
                    .frame(maxWidth: selectedPage == i ? 42 : 28, maxHeight: 5)
            }
        }
    }
}

#Preview {
    Onboard1()
}
