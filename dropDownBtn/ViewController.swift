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
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Delet", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        settingView.layer.cornerRadius = 12
      // settingView.layer.frame = CGRect(x: 0, y: 0, width: 1, height: 3)
    }

    @IBAction func pupopButton(_ sender: UIButton) {
        showAlert()
        
        
//        self.view.addSubview(settingView)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
//       self.settingView.center.x =  self.view.center.x
//
//        self.settingView.center.y = self.view.center.y - (self.view.frame.height / 7.0)
//        //settingView.layer.frame = CGRect(x: 0, y: 0, width: 1, height: 3)
        
        
        
    }
    
     @objc private func didTapButton(){
      
        
    }
    
    
    @IBAction func deleteb(_ sender: UIButton) {
        
        UIView.animate (withDuration: 0.4, animations: {
        
       
        })
        { (status) in
        
        self.settingView.removeFromSuperview()
        }

    }
    
    func  showAlert() {
        
        let alert = UIAlertController (title: "Title", message: "Holle word", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Dis", style: .cancel, handler: { action  in
            print("Dismiss")
        }))

        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { action  in
            print(" Dismiss")
            
        }))
        
        alert.addAction(UIAlertAction(title: "Edite", style: .destructive, handler: { action  in
            print(" Dismiss")
            
        }))
        present(alert , animated: true)
        
    }
    
    
    
  
    
   
}





