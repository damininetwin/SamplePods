//
//  ViewController.swift
//  SamplePods
//
//  Created by Dhananjay.Pawar on 13/07/18.
//  Copyright © 2018 Netwin. All rights reserved.
//

import UIKit
import ActiveLabel
import Floaty

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = ActiveLabel()
        
        label.numberOfLines = 0
        label.enabledTypes = [.mention, .hashtag, .url]
        label.text = "This is a post with #hashtags and a @userhandle."
        label.textColor = .black
        label.handleHashtagTap { hashtag in
            print("Success. You just tapped the \(hashtag) hashtag")
        }
        label.frame = CGRect(x: 20, y: 40, width: view.frame.width-40, height: 400)
        view.addSubview(label)
        
        
        let floaty = Floaty()
        
        floaty.addItem("Hello, World!" ,icon : UIImage(named : "share")!)
        floaty.addItem("I am Handler" ,icon : UIImage(named:"hand")!, handler :{ item in
            let alert = UIAlertController(title: "Hey", message: "I'm hungry...", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Me too", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            floaty.close()
            
        })
        
        
        
        
       
        
        
        self.view.addSubview(floaty)
    }

   


}

