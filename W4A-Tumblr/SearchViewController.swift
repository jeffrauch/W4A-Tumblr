//
//  SearchViewController.swift
//  W4A-Tumblr
//
//  Created by Jeff Rauch on 11/6/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var loadingImageView: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()


    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        searchFeed.alpha = 0
        loadingImageView.alpha = 1
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImage(with: images, duration: 1.0)
        
        loadingImageView.image = animatedImage
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        

        UIView.animate(withDuration:0.8, delay: 0.5,
            options: [], animations: { () -> Void in
                self.searchFeed.alpha = 1
                self.loadingImageView.alpha = 0
        }, completion: nil)

    }
}
