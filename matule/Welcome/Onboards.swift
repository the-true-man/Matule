//
//  Onboards.swift
//  matule
//
//  Created by Евгений Михайлов on 19.11.2024.
//

import SwiftUI

struct Onboards: View {
    @State var selectedPage = 0
    @State var textInBtn = "Начать"
    
    var body: some View {
        
        VStack {
            switchOnboard()
            
            Button(action: {
                withAnimation(.easeInOut(duration: 0.4)) {
                    selectedPage+=1
                }
            }) {
                Text(textInBtn)
                    .foregroundColor(.veryDarkGray)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 17)
                    .background(Color.veryLightGray)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
            }
            .padding(.horizontal,20)
        }                .transition(.opacity)
        
            .onChange(of: selectedPage) { value in
                textInBtn = changeTextInBtn()
            }
        
    }
    func changeTextInBtn() -> String {
        switch selectedPage {
        case 0:
            return "Начать"
        default:
            return "Далее"
        }
    }
    @ViewBuilder
    func switchOnboard() -> some View {
        switch selectedPage {
        case 0:
            AnyView(Onboard1(selectedPage: $selectedPage)
                .transition(.opacity)
            )
        case 1:
            AnyView(Onboard2(selectedPage: $selectedPage)
                .transition(.opacity)
            )
        case 2:
            AnyView(Onboard3(selectedPage: $selectedPage)
                .transition(.opacity)
            )
        default:
            AnyView(EmptyView()
                .transition(.opacity)
            )
        }
    }
    public static func generateCapsuleForPages(_ countPage: Int, _ selectedPage: Int) -> some View {
        HStack(spacing: 10){
            ForEach(0..<countPage){ i in
                Capsule()
                    .fill(selectedPage == i ? .white : .black.opacity(0.3))
                    .frame(maxWidth: selectedPage == i ? 42 : 28, maxHeight: 5)
            }
        }
        .animation(nil)
    }
}

#Preview {
    Onboards()
}
