//
//  WUIViewFactory+OnType.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 4/2/21.
//

import UIKit

extension WUIViewFactory {
    enum OnType {
        case onPrimary, onSecondary, onBackground, onSurface, onError
    }
    
    func color(onColor: UIColor) -> UIColor {
        color(fromOnType: onType(forColor: onColor))
    }
    
    private func onType(forColor color: UIColor) -> WUIViewFactory.OnType {
        switch color {
        case colorPalette.primary, colorPalette.primaryVariant:
            return .onPrimary
        case colorPalette.secondary, colorPalette.secondaryVariant:
            return .onSecondary
        case colorPalette.background:
            return .onBackground
        case colorPalette.surface:
            return .onSurface
        case colorPalette.error:
            return .onError
        default:
            return .onBackground
        }
    }
    
    private func color(fromOnType onType: OnType) -> UIColor {
        switch onType {
        case .onPrimary:
            return colorPalette.onPrimary
        case .onSecondary:
            return colorPalette.onSecondary
        case .onBackground:
            return colorPalette.onBackground
        case .onSurface:
            return colorPalette.onSurface
        case .onError:
            return colorPalette.onError
        }
    }
}
