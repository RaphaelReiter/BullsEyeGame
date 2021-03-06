//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Raphael Reiter on 16/04/2017.
//  Copyright © 2017 Raphael Reiter. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }
}

