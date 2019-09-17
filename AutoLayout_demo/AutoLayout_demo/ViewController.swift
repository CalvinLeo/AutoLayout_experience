//
//  ViewController.swift
//  AutoLayout_demo
//
//  Created by Calvin on 2019/9/17.
//  Copyright © 2019 Calvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sectionView = UIView.init(frame: CGRect.init(x: 0, y: 100, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 100));
        self.view.addSubview(sectionView);
        
        let view = Bundle.main.loadNibNamed("CLHeaderView", owner: nil, options: nil)?.first;
        let headerView = view as! CLHeaderView;
        sectionView.addSubview(headerView);
        
        headerView.setThemeText(text: "任正非：华为愿出售5G技术，并且是一次性买断");
        headerView.setContentText(text: "9月16日讯，华为心声社区发布华为创始人任正非接受英国《经济学人》的采访纪要。在此次采访中，任正非表示，华为愿意将5G的技术和工艺向国外企业进行许可，并且是一次性买断，而非每年缴纳年度许可费。\n\n 任正非表示，给予5G许可，不等于华为自己不做。“我们希望西方能缩短往前走的平台路径，所以许可其他公司完整拿到我们的技术。对于6G研究，我们也是领先世界的，但是我们判断6G十年以后才会开始投入使用。因此，转让技术不是前进的终结，获得资金以后会更大踏步前进。”华为本来就希望世界是平衡的，大家利益均享是有利于华为生存的。");
        headerView.updateContentHeight();
    }
}

