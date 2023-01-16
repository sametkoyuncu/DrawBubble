//
//  ViewController.swift
//  DrawBubble
//
//  Created by Samet Koyuncu on 16.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - triangle
        let triangleView = TriangleView(frame: CGRect(x: 15, y: 200, width: 5, height: 5))
        triangleView.fillColor = .purple
        triangleView.backgroundColor = .clear

        let bubbleView = RoundedCornerView(frame: CGRect(x: 20, y: 200, width: 200, height: 40))
        
        bubbleView.backgroundColor = .purple
        // rounded corners
        bubbleView.corners = [.bottomLeft, .bottomRight, .topRight]
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
    
        imageView.backgroundColor = .systemPink
        imageView.image = UIImage(systemName: "house")
        
        bubbleView.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: bubbleView.topAnchor, constant: 10).isActive = true
        imageView.leadingAnchor.constraint(equalTo: bubbleView.leadingAnchor, constant: 10).isActive = true
        imageView.trailingAnchor.constraint(equalTo: bubbleView.trailingAnchor, constant: -10).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bubbleView.bottomAnchor, constant: -10).isActive = true
                                    
        
        view.addSubview(triangleView)
        view.addSubview(bubbleView)
    }
}
