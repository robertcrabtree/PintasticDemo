//
//  VerticallyAlignedLabel.swift
//  PintasticDemo
//
//  Created by Rob on 11/22/21.
//

import UIKit

class VerticallyAlignedLabel: UILabel {
    override func drawText(in rect: CGRect) {
        var newRect = rect
        switch contentMode {
        case .top:
            newRect.size.height = sizeThatFits(rect.size).height
        case .bottom:
            let height = sizeThatFits(rect.size).height
            newRect.origin.y += rect.size.height - height
            newRect.size.height = height
        default:
            ()
        }
        super.drawText(in: newRect)
    }
}
