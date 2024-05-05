//
//  FontExt.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//


import SwiftUI

extension Font {
    
    enum Poppins {
        case black
        case blackItalic
        case bold
        case boldItalic
        case extraBold
        case extraBoldItalic
        case extraLight
        case extraLightItalic
        case italic
        case light
        case lightItalic
        case medium
        case mediumItalic
        case regular
        case regularItalic
        case semiBold
        case semiBoldItalic
        case thin
        case thinItalic

    
      var value: String {
        switch self {
        case .black:
            return "Poppins-Black"
        case .blackItalic:
            return "Poppins-BlackItalic"
        case .bold:
            return "Poppins-Bold"
        case .boldItalic:
            return "Poppins-BoldItalic"
        case .extraBold:
            return "Poppins-ExtraBold"
        case .extraBoldItalic:
            return "Poppins-ExtraBoldItalic"
        case .extraLight:
            return "Poppins-ExtraLight"
        case .extraLightItalic:
            return "Poppins-ExtraLightItalic"
        case .light:
            return "Poppins-Light"
        case .lightItalic:
            return "Poppins-LightItalic"
        case .medium:
            return "Poppins-Medium"
        case .mediumItalic:
            return "Poppins-MediumItalic"
        case .regular:
            return "Poppins-Regular"
        case .regularItalic:
            return "Poppins-RegularItalic"
        case .semiBold:
            return "Poppins-SemiBold"
        case .semiBoldItalic:
            return "Poppins-SemiBoldItalic"
        case .thin:
            return "Poppins-Thin"
        case .thinItalic:
            return "Poppins-ThinItalic"
        case .italic:
            return "Poppins-Italic"
        }
      }
    }
    
    static func poppins(_ type: Poppins, size: CGFloat = 16) -> Font {
      return .custom(type.value, size: size)
    }
}

extension UIFont {

    static func poppins(_ type: Poppins, size: CGFloat = 16) -> UIFont {
        return UIFont(name: type.value, size: size)!
    }
    
    enum Poppins {
        case black
        case blackItalic
        case bold
        case boldItalic
        case extraBold
        case extraBoldItalic
        case extraLight
        case extraLightItalic
        case italic
        case light
        case lightItalic
        case medium
        case mediumItalic
        case regular
        case regularItalic
        case semiBold
        case semiBoldItalic
        case thin
        case thinItalic
        
        
        var value: String {
            switch self {
            case .black:
                return "Poppins-Black"
            case .blackItalic:
                return "Poppins-BlackItalic"
            case .bold:
                return "Poppins-Bold"
            case .boldItalic:
                return "Poppins-BoldItalic"
            case .extraBold:
                return "Poppins-ExtraBold"
            case .extraBoldItalic:
                return "Poppins-ExtraBoldItalic"
            case .extraLight:
                return "Poppins-ExtraLight"
            case .extraLightItalic:
                return "Poppins-ExtraLightItalic"
            case .light:
                return "Poppins-Light"
            case .lightItalic:
                return "Poppins-LightItalic"
            case .medium:
                return "Poppins-Medium"
            case .mediumItalic:
                return "Poppins-MediumItalic"
            case .regular:
                return "Poppins-Regular"
            case .regularItalic:
                return "Poppins-RegularItalic"
            case .semiBold:
                return "Poppins-SemiBold"
            case .semiBoldItalic:
                return "Poppins-SemiBoldItalic"
            case .thin:
                return "Poppins-Thin"
            case .thinItalic:
                return "Poppins-ThinItalic"
            case .italic:
                return "Poppins-Italic"
            }
        }
    }
    
}
