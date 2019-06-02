//
//  ViewController.swift
//  userdefaults
//
//  Created by 渡辺航太郎 on 2019/06/03.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //保存されているDictionaryを読み込む箱を用意↓
    var getDictionary: [String:String] = [:]
    
    
    let saveData = UserDefaults.standard
    
    @IBAction func register() {
        
       let wordDictionary = ["vegetable": vegetable.text!, "fruits": fruit.text!]
        
        saveData.set(wordDictionary, forKey: "TARO")
    }
    
    @IBOutlet var vegetable: UITextField!
    
    @IBOutlet var fruit: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        if saveData != nil {
        //用意した箱に保存した辞書を入れる↓
        getDictionary = saveData.dictionary(forKey: "TARO") as! [String : String]
        //辞書から取り出してテキストフィールドに表示させる
            vegetable.text = getDictionary["vegetable"]
            fruit.text = getDictionary["fruits"]
        
        }
    }


}

