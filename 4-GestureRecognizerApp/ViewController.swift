//
//  ViewController.swift
//  4-GestureRecognizerApp
//
//  Created by Berke Ersiz on 19.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var isRonaldo = true
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true //active
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        //print("tapped")
        if isRonaldo == true {
            imageView.image = UIImage(named: "messi")
            nameLabel.text = "Lionel Messi"
            isRonaldo = false
        } else {
            imageView.image = UIImage(named: "ronaldo")
            nameLabel.text = "Cristiano Ronaldo"
            isRonaldo = true
        }
    }


}

