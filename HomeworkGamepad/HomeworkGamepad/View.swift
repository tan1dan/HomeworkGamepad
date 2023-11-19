//
//  View.swift
//  HomeworkGamepad
//
//  Created by Иван Знак on 19/11/2023.
//

import UIKit

class View: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    private func commonInit(){
        let xib = UINib(nibName: "View", bundle: nil)
        let view = xib.instantiate(withOwner: self).first as! UIView
        
        view.frame = self.bounds
        addSubview(view)
    }
}
