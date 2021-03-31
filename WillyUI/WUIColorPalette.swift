//
//  WUIColorPalette.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 3/30/21.
//

import UIKit

public struct WUIColorPalette {
    public let primary: UIColor
    public let primaryVariant: UIColor
    public let secondary: UIColor
    public let secondaryVariant: UIColor
    public let background: UIColor
    public let surface: UIColor
    public let error: UIColor
    public let onPrimary: UIColor
    public let onSecondary: UIColor
    public let onBackground: UIColor
    public let onSurface: UIColor
    public let onError: UIColor
    
    public init(
        primary: UIColor,
        primaryVariant: UIColor,
        secondary: UIColor,
        secondaryVariant: UIColor,
        background: UIColor,
        surface: UIColor,
        error: UIColor,
        onPrimary: UIColor,
        onSecondary: UIColor,
        onBackground: UIColor,
        onSurface: UIColor,
        onError: UIColor
    ) {
        self.primary = primary
        self.primaryVariant = primaryVariant
        self.secondary = secondary
        self.secondaryVariant = secondaryVariant
        self.background = background
        self.surface = surface
        self.error = error
        self.onPrimary = onPrimary
        self.onSecondary = onSecondary
        self.onBackground = onBackground
        self.onSurface = onSurface
        self.onError = onError
    }
}
