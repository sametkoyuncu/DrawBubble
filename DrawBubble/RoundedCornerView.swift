//
//  RoundedView.swift
//  DrawBubble
//
//  Created by Samet Koyuncu on 16.01.2023.
//

import UIKit

class RoundedCornerView: UIView {
    var cornerRadius: CGFloat = 10.0
    var corners: [UIRectCorner] = [.topLeft, .topRight]
    override func layoutSubviews() {
        super.layoutSubviews()
        var maskingCorners: UIRectCorner = []
        for corner in corners {
            maskingCorners.insert(corner)
        }
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: maskingCorners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}



