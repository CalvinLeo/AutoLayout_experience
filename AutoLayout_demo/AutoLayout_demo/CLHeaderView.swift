//
//  CLHeaderView.swift
//  AutoLayout_demo
//
//  Created by Calvin on 2019/9/17.
//  Copyright © 2019 Calvin. All rights reserved.
//

import UIKit

class CLHeaderView: UIView {
    
    @IBOutlet weak var themeLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    let SCREEN_WIDTH = UIScreen.main.bounds.width;
    
    override func awakeFromNib() {
        super.awakeFromNib();
    }
    
    public func setThemeText(text: String) -> Void {
        self.themeLbl.text = text;
    }
    
    public func setContentText(text: String) -> Void {
        self.contentLbl.text = text;
    }
    
    // 更新高度
    func updateContentHeight() -> Void {
        self.themeLbl.preferredMaxLayoutWidth = SCREEN_WIDTH - 16 - 16;
        self.contentLbl.preferredMaxLayoutWidth = SCREEN_WIDTH - 16 - 16;
        let height = self.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).height;
        let width = self.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize).width;
        var frame = self.frame;
        frame.size.height = height;
        frame.size.width = width;
        self.frame = frame;
    }
}
