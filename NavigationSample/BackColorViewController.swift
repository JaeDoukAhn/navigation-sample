//
//  BackColorViewController.swift
//  NavigationSample
//
//  Created by ktds 20 on 2017. 8. 16..
//  Copyright © 2017년 CJON, Inc. All rights reserved.
//

import UIKit

class BackColorViewController: UIViewController {

    
    @IBAction func redColorClicked(_ sender: Any) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.backColor = UIColor.red
        }
    }
    
    @IBAction func blueColorClicked(_ sender: Any) {
        let noti = NotificationCenter.default
        noti.post(name: NSNotification.Name(rawValue:"change_back_color"),
                  object: self,
                  userInfo: ["color":UIColor.black])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
