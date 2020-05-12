//
//  ViewController.swift
//  loadWebsiteShake
//
//  Created by Anton Haastrup on 24/04/2020.
//  Copyright © 2020 Anton Haastrup. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var webView: WKWebView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
   


    

    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            loadWebsite()
        }
    }
    
    
    
    func loadWebsite(){
        let string = text.text ?? ""
         let url = URL (string: "https://" + string)
               let requestObj = URLRequest(url: url!)
               webView.load(requestObj)
               
    }
    
    

}

