//
//  ParallaxCell.swift
//  ListyApp
//
//  Created by Ramit sharma on 04/01/19.
//  Copyright © 2019 Ramit sharma. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    @IBOutlet weak var CellmageView: UIImageView!
    
    @IBOutlet weak var DescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(withImage image: UIImage, andDescription desc: String) {
    
        CellmageView.image = image
        DescriptionLabel.text = desc
    }
    
    func setUpParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        CellmageView.addMotionEffect(motionEffectGroup)
    }
}
