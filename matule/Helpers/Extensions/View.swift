//
//  View.swift
//  matule
//
//  Created by Вадим Мартыненко on 20.11.2024.
//

import SwiftUI

#warning("Научись писать extension'ы, очень сильно ускорит разработку")

extension View {
    // MARK: - Метод для использования шрифта Raleway
    func raleway(size: CGFloat, weight: Font.Weight = .regular) -> some View {
        switch weight {
        case .black:
            font(.custom("Raleway-Black", size: size))
        case .bold:
            font(.custom("Raleway-Bold", size: size))
        case .light:
            font(.custom("Raleway-Light", size: size))
        case .medium:
            font(.custom("Raleway-Medium", size: size))
        default:
            font(.custom("Raleway-Regular", size: size))
        }
    }
}
