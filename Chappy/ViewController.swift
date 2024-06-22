//
//  ViewController.swift
//  Chappy
//
//  Created by akari on 2024/06/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var characterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0,delay: 0,options: [.curveEaseIn,.autoreverse,.repeat], animations: {
            self.characterImageView.center.y += 11.0
        }){ _ in
            self.characterImageView.center.y -= 11.0
        }
    }


}

