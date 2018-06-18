//
//  ViewController.swift
//  TapGestureDemo
//
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var tapGesture = UITapGestureRecognizer()
    @IBOutlet weak var viewTap: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.myviewTapped(_:)))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        viewTap.addGestureRecognizer(tapGesture)
        viewTap.isUserInteractionEnabled = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func myviewTapped(_ sender: UITapGestureRecognizer) {
        
        if self.viewTap.backgroundColor == UIColor.yellow {
            self.viewTap.backgroundColor = UIColor.green
        }else{
            self.viewTap.backgroundColor = UIColor.yellow
        }
    }
   
}

