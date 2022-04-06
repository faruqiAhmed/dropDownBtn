//
//  ViewController.swift
//  dropDownBtn
//
//  Created by Md Omar Faruq on 4/6/22.
//

import UIKit

class ViewController: UIViewController  {

    @IBOutlet weak var Setting: UIButton!
    
    @IBOutlet weak var delete: UIButton!
    
    @IBOutlet var settingView: UIView!
    
    @IBOutlet weak var tbl: UITableView!
    
    @IBOutlet weak var tobtm: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        settingView.layer.cornerRadius = 12
      // settingView.layer.frame = CGRect(x: 0, y: 0, width: 1, height: 3)
    }

    @IBAction func pupopButton(_ sender: UIButton) {
        
        
        
        self.view.addSubview(settingView)
       self.settingView.center.x =  self.view.center.x
        
        self.settingView.center.y = self.view.center.y - (self.view.frame.height / 7.0)
        //settingView.layer.frame = CGRect(x: 0, y: 0, width: 1, height: 3)
        
        
        
    }
    
    @IBAction func deleteb(_ sender: UIButton) {
        
        UIView.animate (withDuration: 0.4, animations: {
        
       
        })
        { (status) in
        
        self.settingView.removeFromSuperview()
        }

    }
    
   
}

