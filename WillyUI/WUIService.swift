//
//  WUIService.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 3/31/21.
//

import UIKit

public class WUIService {
    private(set) static var viewFactory: WUIViewFactory!
    
    static var colorPalette: WUIColorPalette {
        viewFactory.colorPalette
    }
    
    static func configure(colorPalette: WUIColorPalette) {
        viewFactory = WUIViewFactory(colorPalette: colorPalette)
    }
    
    static func label(onColor: UIColor?) -> UILabel {
        viewFactory.label(onColor: onColor)
    }
    
    static func button(type: WUIButtonType) -> UIButton {
        viewFactory.button(type: type)
    }
}
