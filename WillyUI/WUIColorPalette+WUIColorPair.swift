//
//  WUIColorPalette+WUIColorPair.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 3/30/21.
//

import UIKit

public typealias WUIColorPair = (normal: UIColor, dark: UIColor)

extension UIColor {
    convenience init(wuiColorPair: WUIColorPair) {
        self.init { traits -> UIColor in
            traits.userInterfaceStyle == .dark ? wuiColorPair.dark : wuiColorPair.normal
        }
    }
}

extension WUIColorPalette {
    public init(
        primaryPair: WUIColorPair,
        primaryVariantPair: WUIColorPair,
        secondaryPair: WUIColorPair,
        secondaryVariantPair: WUIColorPair,
        backgroundPair: WUIColorPair,
        surfacePair: WUIColorPair,
        errorPair: WUIColorPair,
        onPrimaryPair: WUIColorPair,
        onSecondaryPair: WUIColorPair,
        onBackgroundPair: WUIColorPair,
        onSurfacePair: WUIColorPair,
        onErrorPair: WUIColorPair
    ) {
        primary = .init(wuiColorPair: primaryPair)
        primaryVariant = .init(wuiColorPair: primaryVariantPair)
        secondary = .init(wuiColorPair: secondaryPair)
        secondaryVariant = .init(wuiColorPair: secondaryVariantPair)
        background = .init(wuiColorPair: backgroundPair)
        surface = .init(wuiColorPair: surfacePair)
        error = .init(wuiColorPair: errorPair)
        onPrimary = .init(wuiColorPair: onPrimaryPair)
        onSecondary = .init(wuiColorPair: onSecondaryPair)
        onBackground = .init(wuiColorPair: onBackgroundPair)
        onSurface = .init(wuiColorPair: onSurfacePair)
        onError = .init(wuiColorPair: onErrorPair)
    }
}
