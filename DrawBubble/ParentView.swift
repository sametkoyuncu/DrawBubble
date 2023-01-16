//
//  ParentView.swift
//  DrawBubble
//
//  Created by Samet Koyuncu on 16.01.2023.
//
import UIKit

class ParentView: UIView {
    var childView: UIView!
    let padding: CGFloat = 10

    override init(frame: CGRect) {
        super.init(frame: frame)
        childView = UIView()
        addSubview(childView)

        childView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            childView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            childView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            childView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            childView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

