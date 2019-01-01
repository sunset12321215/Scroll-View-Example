//
//  ViewController.swift
//  AutoLayScroll
//
//  Created by Michel Bouchet on 19/08/2016.
//  Copyright © 2016 Michel Bouchet. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    let label1: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.............."
        label.numberOfLines = 0
        label.textColor = UIColor.white
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.text = "ABC"
        label.numberOfLines = 0
        label.textColor = UIColor.white
        return label
    }()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    let contentView: UIView = {
        let contentView = UIView()
        return contentView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        setupViews()
    }
    
    func setupScrollView(){
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.snp.makeConstraints { (make) in
            make.centerX.width.top.bottom.equalToSuperview()
        }
    
        contentView.snp.makeConstraints { (make) in
            make.centerX.width.top.bottom.equalToSuperview()
        }
    }
    
    func setupViews(){
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        
        label1.snp.makeConstraints { (make) in
            make.centerX.width.top.equalToSuperview()
        }
        
        label2.snp.makeConstraints { (make) in
            make.top.equalTo(label1.snp.bottom)
            make.centerX.width.bottom.equalToSuperview()
        }
    }
}
