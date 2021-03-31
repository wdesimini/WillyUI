//
//  WUIViewFactory.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 3/31/21.
//

import UIKit

public struct WUIViewFactory {
    public enum OnType {
        case onPrimary, onSecondary, onBackground, onSurface, onError
    }
    
    public let colorPalette: WUIColorPalette
    
    public func label(onType: OnType = .onBackground) -> UILabel {
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        label.textColor = color(fromOnType: onType)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
