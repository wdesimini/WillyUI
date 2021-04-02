//
//  WUIViewFactory.swift
//  WillyUI
//
//  Created by Desimini, Wilson on 3/31/21.
//

import UIKit

public struct WUIViewFactory {
    public let colorPalette: WUIColorPalette
    
    public func label(onColor: UIColor?) -> UILabel {
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        label.textColor = color(onColor: onColor ?? .clear)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
