//
//  firstJokeViewController.swift
//  iKid
//
//  Created by iGuest on 11/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class firstJokeViewController: UIViewController {
    var punchline = false
    
    @IBOutlet var goodJoke1: UIView!
    @IBOutlet weak var jokeLabel: UITextView!
    @IBOutlet weak var jokePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jokePicture.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if(!punchline) {
            UIView.transition(with: goodJoke1,
                              duration: 0.5,
                              options: UIViewAnimationOptions.transitionFlipFromRight,
                              animations: nil,
                              completion: {(_ : Bool) -> Void in
                                self.jokeLabel.text = "Because if they fell forward, they'd still be in the boat."
                                self.jokePicture.isHidden = false
                                sender.setTitle("Back", for: UIControlState.normal)
                                self.punchline = true
            })
        } else {
            UIView.transition(with: goodJoke1,
                              duration: 0.5,
                              options: UIViewAnimationOptions.transitionFlipFromLeft,
                              animations: nil,
                              completion: {(_ : Bool) -> Void in
                                self.jokeLabel.text = "Why do scuba divers fall backwards off of the boat?"
                                self.jokePicture.isHidden = true
                                sender.setTitle("Next", for: UIControlState.normal)
                                self.punchline = false
            })
        }
    }
}
