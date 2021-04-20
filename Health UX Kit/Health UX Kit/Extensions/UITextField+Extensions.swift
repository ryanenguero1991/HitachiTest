//
//  UITextField+Extensions.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/20/21.
//

import Foundation
import UIKit

extension UITextField {
    
    func roundCornerWithShadow() {
//        self.layer.masksToBounds = false
//        self.layer.shadowRadius = 4.0
//        self.layer.shadowColor = UIColor.black.cgColor
//        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
//        self.layer.shadowOpacity = 1.0
        self.layer.cornerRadius = 4.0
        self.layer.borderWidth = 0.1
         
    }
    
    func setupRightImage(imageName:String){
      let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
      imageView.image = UIImage(named: imageName)
      let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 40))
      imageContainerView.addSubview(imageView)
      rightView = imageContainerView
      rightViewMode = .always
      self.tintColor = .lightGray
  }
    
    
    

}
