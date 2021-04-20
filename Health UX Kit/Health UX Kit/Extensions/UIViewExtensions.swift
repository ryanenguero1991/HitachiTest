//
//  UIViewExtensions.swift
//  Health UX Kit
//
//  Created by Ryan Enguero on 4/20/21.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorner() {
        self.layer.cornerRadius = self.frame.height / 2.0
        self.layer.masksToBounds = true
    }
}
