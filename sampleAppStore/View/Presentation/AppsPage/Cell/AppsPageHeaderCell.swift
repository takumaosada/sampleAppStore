//
//  AppsPageHeaderCell.swift
//  sampleAppStore
//
//  Created by Takuma Osada on 2019/05/05.
//  Copyright © 2019 Takuma Osada. All rights reserved.
//

import UIKit
import Instantiate
import InstantiateStandard

class AppsPageHeaderCell: UICollectionViewCell {
    
    let companyLabel = UILabel(text: "FaceBook .inc", font: .boldSystemFont(ofSize: 12))
    let titleLabel = UILabel(text: "keeping up with friends is faster than ever", font: .systemFont(ofSize: 26))
    let imageView = UIImageView(cornerRadius: 8)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        companyLabel.textColor = UIColor(cgColor: #colorLiteral(red: 0, green: 0.4774455428, blue: 0.999371469, alpha: 1))
        titleLabel.numberOfLines = 2
        
        let stackView = VerticalStackView(arrangedSubviews: [companyLabel, titleLabel, imageView], spacing: 12)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AppsPageHeaderCell: Reusable {
}
