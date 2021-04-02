//
//  WUIViewFactory.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 3/31/21.
//

import UIKit

struct WUIViewFactory {
    let colorPalette: WUIColorPalette
    
    func label(onColor: UIColor?) -> UILabel {
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        label.textColor = color(onColor: onColor ?? .clear)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    func button(type: WUIButtonType) -> UIButton {
        let colors = type.colors(forPalette: colorPalette)
        
        let button = UIButton()
        button.backgroundColor = colors.backgroundColor
        button.setTitleColor(colors.titleColor, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
