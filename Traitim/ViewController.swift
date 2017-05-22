//
//  ViewController.swift
//  Traitim
//
//  Created by Minh Tuan on 5/22/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var anh: UIImageView!
    @IBOutlet weak var lbl_text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl_text.text = "I Love You"
        addAnh()
        kichThuoc()
        
    }
    func addAnh(){
        anh = UIImageView(frame: CGRect(x: 155, y: 200, width: 100, height: 100))
        anh.image = UIImage(named: "heart")
        view.addSubview(anh)
    }
    func kichThuoc(){
        UIView.animate(withDuration: 3, animations: {
            self.anh.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.lbl_text.alpha = 0
        }) { (complete) in
            UIView.animate(withDuration: 3, animations: {
                self.anh.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.lbl_text.alpha = 1
            }, completion:{(complete) in
                self.kichThuoc()
            })
        }
    }

    
}

