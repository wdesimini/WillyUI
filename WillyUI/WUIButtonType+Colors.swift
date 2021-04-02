//
//  WUIButtonType+Colors.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 4/2/21.
//

import UIKit

typealias WUIButtonColorPair = (backgroundColor: UIColor, titleColor: UIColor)

extension WUIButtonType {
    func colors(forPalette colorPalette: WUIColorPalette) -> WUIButtonColorPair {
        var backgroundColor: UIColor
        var titleColor: UIColor
        
        switch self {
        case .prominent:
            backgroundColor = colorPalette.secondary
            titleColor = colorPalette.onSecondary
        case .minimal(let onColor):
            backgroundColor = onColor
            titleColor = colorPalette.primary
        }
        
        return (backgroundColor, titleColor)
    }
}
