//
//  PunViewController.swift
//  iKid
//
//  Created by iGuest on 11/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {
    var punchline = false
    
    @IBOutlet var punView: UIView!
    @IBOutlet weak var punLabel: UITextView!
    @IBOutlet weak var punImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.punImage.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if(!punchline) {
            UIView.transition(with: punView,
                              duration: 0.5,
                              options: UIViewAnimationOptions.transitionFlipFromRight,
                              animations: nil,
                              completion: {(_ : Bool) -> Void in
                                self.punLabel.text = "But the invention of the broom swept the nation."
                                self.punImage.isHidden = false
                                sender.setTitle("Back", for: UIControlState.normal)
                                self.punchline = true
            })
        } else {
            UIView.transition(with: punView,
                              duration: 0.5,
                              options: UIViewAnimationOptions.transitionFlipFromLeft,
                              animations: nil,
                              completion: {(_ : Bool) -> Void in
                                self.punLabel.text = "The invention of the shovel was groundbreaking."
                                self.punImage.isHidden = true
                                sender.setTitle("Next", for: UIControlState.normal)
                                self.punchline = false
            })
        }
    }
}
