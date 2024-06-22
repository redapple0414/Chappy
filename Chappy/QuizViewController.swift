//
//  QuizViewController.swift
//  Chappy
//
//  Created by akari on 2024/06/22.
//

import UIKit

class QuizViewController: UIViewController {
    
    let quizTitles = ["卑弥呼", "聖徳太子", "中臣鎌足", "中大兄皇子"]
    
    @IBOutlet var Button0: UIButton!
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    
    var collectButton = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Button0.setTitle(quizTitles[0], for: .normal)
        Button1.setTitle(quizTitles[1], for: .normal)
        Button2.setTitle(quizTitles[2], for: .normal)
        Button3.setTitle(quizTitles[3], for: .normal)
        
        Button0.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        Button1.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        Button2.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        Button3.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
            if (sender == Button0 && collectButton == 0) ||
               (sender == Button1 && collectButton == 1) ||
               (sender == Button2 && collectButton == 2) ||
               (sender == Button3 && collectButton == 3) {
                print("正解")
            } else {
                print("不正解")
            }
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
