//
//  View.swift
//  HomeworkGamepad
//
//  Created by Иван Знак on 19/11/2023.
//

import UIKit

class View: UIView {
    
    @IBOutlet weak var buttonUp: UIButton!
    @IBOutlet weak var buttonRight: UIButton!
    @IBOutlet weak var buttonDown: UIButton!
    @IBOutlet weak var buttonLeft: UIButton!
    var buttonUpClosure: (() -> ())?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonUp.setTitle("Up", for: .normal)
        buttonDown.setTitle("Down", for: .normal)
        buttonLeft.setTitle("Left", for: .normal)
        buttonRight.setTitle("Right", for: .normal)
        buttonUp.addTarget(self, action: #selector(actionUp) , for: .touchUpInside)
    }
    private func commonInit(){
        let xib = UINib(nibName: "View", bundle: nil)
        let view = xib.instantiate(withOwner: self).first as! UIView
        
        view.frame = self.bounds
        addSubview(view)
    }
    
    @objc func actionUp(){
        buttonUpClosure
    }
}
