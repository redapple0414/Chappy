//
//  CameraViewController.swift
//  Chappy
//
//  Created by akari on 2024/06/19.
//

import UIKit
import PhotosUI

class CameraViewController: UIViewController,PHPickerViewControllerDelegate{
    
    @IBOutlet var backgroundImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        let itemProvider = results.first?.itemProvider
        if let itemProvider, itemProvider.canLoadObject(ofClass: UIImage.self) { itemProvider.loadObject(ofClass: UIImage.self) { image, error in DispatchQueue.main.async {
            //背景画像にセット
            self.backgroundImageView.image = image as? UIImage
        }
        }
        }
        //ピッカーを閉じる
        dismiss(animated: true)
    }
    
    @IBAction func changeBackground(){
        var configuration = PHPickerConfiguration()
        let filter = PHPickerFilter.images
        configuration.filter = filter
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        present(picker,animated: true)
    }
}
