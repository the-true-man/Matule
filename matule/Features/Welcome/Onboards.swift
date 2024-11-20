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
        }
        .transition(.opacity)
        .onChange(of: selectedPage) { oldValue, newValue in // Используй этот
            textInBtn = changeTextInBtn()
            
            // Вообще пересмотри свой код, тут можно обойтись и без onChange
        }
#warning("Данный onChange deprecated (устарел)")
//        .onChange(of: selectedPage) { value in
//            textInBtn = changeTextInBtn()
//        }
        
    }
    func changeTextInBtn() -> String {
        switch selectedPage {
        case 0:
            return "Начать"
        default:
            return "Далее"
        }
    }
    
#warning("Ненужный каст к типу AnyView")
    
    // @ViewBuilder кастит все к одному типу за тебя, не нужно делать это вручную
    @ViewBuilder
    func switchOnboard() -> some View {
        switch selectedPage {
        case 0:
            Onboard1(selectedPage: $selectedPage)
                .transition(.opacity)
        case 1:
            Onboard2(selectedPage: $selectedPage)
                .transition(.opacity)
        case 2:
            Onboard3(selectedPage: $selectedPage)
                .transition(.opacity)
        default:
            EmptyView()
                .transition(.opacity)
        }
    }
    
#warning("?")
    // Впервые вижу такой подход, сделай папку Components и там создай компонент (отдельную вьюшку)
    
    public static func generateCapsuleForPages(_ countPage: Int, _ selectedPage: Int) -> some View {
        HStack(spacing: 10){
#warning("потерял id")
            
            ForEach(0..<countPage, id: \.self){ i in
                Capsule()
                    .fill(selectedPage == i ? .white : .black.opacity(0.3))
                    .frame(maxWidth: selectedPage == i ? 42 : 28, maxHeight: 5)
            }
        }
        // не успользуй animation без value, этот метод deprecated
        // .animation(nil)
        .animation(nil, value: selectedPage)
    }
}

#Preview {
    Onboards()
}
