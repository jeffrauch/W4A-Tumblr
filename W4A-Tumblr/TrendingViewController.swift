//
//  TrendingViewController.swift
//  W4A-Tumblr
//
//  Created by Jeff Rauch on 11/6/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {
    
    @IBOutlet weak var trendingScrollView: UIScrollView!
    
    @IBOutlet weak var trendingImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        trendingScrollView.contentSize = trendingImageView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
