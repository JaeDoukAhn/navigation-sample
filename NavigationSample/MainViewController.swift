//
//  MainViewController.swift
//  NavigationSample
//
//  Created by ktds 20 on 2017. 8. 16..
//  Copyright © 2017년 CJON, Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let noti = NotificationCenter.default
        noti.addObserver(self, selector: #selector(changeBackColor(_:)), name: Notification.Name(rawValue:"change_back_color"), object: nil)
        
    }

    func changeBackColor(_ notification:Notification) {
//        self.view.backgroundColor = UIColor.blue
        if let color = notification.userInfo?["color"] as? UIColor {
            self.view.backgroundColor = color
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            
            if let color = appDelegate.backColor {
                self.view.backgroundColor = color
            }
        }
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
