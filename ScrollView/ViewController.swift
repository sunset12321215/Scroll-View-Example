//
//  ViewController.swift
//  ScrollView
//
//  Created by mac on 12/29/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //  MARK: - UI Element
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return scrollView
    }()
    
    private let imageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "03")
        return imageView
    }()
    
    private let imageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "03")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupScrollView()
        setupImageView1()
        setupImageView2()
//        var sizeOfContent = 0
        for view in scrollView.subviews {
            print(view.frame.size.height)
        }
    }
    
    //  MARK: - Setup View
    private func setupImageView1() {
        scrollView.addSubview(imageView1)
        imageView1.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview()
            make.width.equalToSuperview()
//            make.height.equalTo(400)
        }
    }
    
    private func setupImageView2() {
        scrollView.addSubview(imageView2)
        imageView2.snp.makeConstraints { (make) in
            make.top.equalTo(imageView1.snp.bottom)
            make.left.equalToSuperview()
            make.width.equalToSuperview()
//            make.height.equalTo(400)
        }
    }
    
    private func setupScrollView() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.top.bottom.left.right.equalToSuperview()
        }
    }
}
