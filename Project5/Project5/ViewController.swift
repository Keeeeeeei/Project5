//
//  ViewController.swift
//  Project5
//
//  Created by Kei on 2020/07/20.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
      
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var label: UILabel!
    var alertController: UIAlertController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
       let num1 = Int(textField1.text!) ?? 0
       let num2 = Int(textField2.text!) ?? 0
       var result = 0
        
        if num2 == 0{
            alert(title:"課題５" , message:"割る数には0を入力しないで下さい")
        }else{
           result = num1 / num2
        }
        label.text = "\(result)"
    }
    
    func alert(title:String, message:String) {
        let alert: UIAlertController = UIAlertController(title: "課題５", message: "割る数には0を入力しないで下さい", preferredStyle:  UIAlertController.Style.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
        (action: UIAlertAction!) -> Void in
        print("OK")
        })
        
        alert.addAction(defaultAction)
        present(alert, animated: true, completion: nil)
}
}
