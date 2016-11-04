//
//  DadJokeViewController.swift
//  iKid
//
//  Created by iGuest on 11/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class DadJokeViewController: UIViewController {
    var punchline = false
    
    @IBOutlet weak var dadLabel: UITextView!
    @IBOutlet var dadView: UIView!
    @IBOutlet weak var dadImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dadImage.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if(!punchline) {
            UIView.transition(with: dadView,
                              duration: 0.5,
                              options: UIViewAnimationOptions.transitionFlipFromRight,
                              animations: nil,
                              completion: {(_ : Bool) -> Void in
                                self.dadLabel.text = "A receding hare-line!"
                                self.dadImage.isHidden = false
                                sender.setTitle("Back", for: UIControlState.normal)
                                self.punchline = true
            })
        } else {
            UIView.transition(with: dadView,
                              duration: 0.5,
                              options: UIViewAnimationOptions.transitionFlipFromLeft,
                              animations: nil,
                              completion: {(_ : Bool) -> Void in
                                self.dadLabel.text = "What do you call a parade of rabbits hopping backwards?"
                                self.dadImage.isHidden = true
                                sender.setTitle("Next", for: UIControlState.normal)
                                self.punchline = false
            })
        }
    }
}
