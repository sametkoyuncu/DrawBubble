//
//  TriangleView.swift
//  DrawBubble
//
//  Created by Samet Koyuncu on 16.01.2023.
//
import UIKit

class TriangleView: UIView {
    var fillColor: UIColor = .gray
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.minX, y: bounds.minY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.maxY))
        path.addLine(to: CGPoint(x: bounds.maxX, y: bounds.minY))
        path.close()
        fillColor.setFill()
        path.fill()
    }
}
