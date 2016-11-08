//
//  ComposeViewController.swift
//  W4A-Tumblr
//
//  Created by Jeff Rauch on 11/6/16.
//  Copyright © 2016 Jeff Rauch. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    var fadeTransition: FadeTransition!
    
    
    @IBOutlet weak var textLink: UIImageView!
    @IBOutlet weak var photoLink: UIImageView!
    @IBOutlet weak var quoteLink: UIImageView!
    @IBOutlet weak var linkLink: UIImageView!
    @IBOutlet weak var chatLink: UIImageView!
    @IBOutlet weak var videoLink: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        textLink.center.y = textLink.center.y + 400
        photoLink.center.y = photoLink.center.y + 400
        quoteLink.center.y = quoteLink.center.y + 400
        linkLink.center.y = linkLink.center.y + 400
        chatLink.center.y = chatLink.center.y + 400
        videoLink.center.y = videoLink.center.y + 400
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.1) {
            self.textLink.center.y = self.textLink.center.y - 400
        }
        
        UIView.animate(withDuration: 0.08) {
            self.photoLink.center.y = self.photoLink.center.y - 400
        }
        
        UIView.animate(withDuration: 0.15) {
            self.quoteLink.center.y = self.quoteLink.center.y - 400
        }
        
        UIView.animate(withDuration: 0.03) {
            self.linkLink.center.y = self.linkLink.center.y - 400
        }
        
        UIView.animate(withDuration: 0.14) {
            self.chatLink.center.y = self.chatLink.center.y - 400
        }
        
        UIView.animate(withDuration: 0.06) {
            self.videoLink.center.y = self.videoLink.center.y - 400
        }
    }
    
    
    
    
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        let destinationViewController = segue.destination
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 1.0
    }

    
    
    
    @IBAction func didPressNevermind(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }


}
