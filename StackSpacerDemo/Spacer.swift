//
//  Spacer.swift
//  StackDemo
//
//  Created by mac on 2025/3/10.
//

import UIKit

class Spacer: UIView {
    fileprivate var space: CGFloat = 0
    
    required init(_ space: CGFloat = 5) {
        self.space = space
        
        super.init(frame: .zero)
        
        setLayoutPriority()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setLayoutPriority()
    }
    
    func setLayoutPriority() {
        backgroundColor = .clear
        
        let layoutPriority = UILayoutPriority(1)
        self.setContentCompressionResistancePriority(layoutPriority, for: .horizontal)
        self.setContentHuggingPriority(layoutPriority, for: .horizontal)
        
        self.setContentCompressionResistancePriority(layoutPriority, for: .vertical)
        self.setContentHuggingPriority(layoutPriority, for: .vertical)
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: space, height: space)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
}
