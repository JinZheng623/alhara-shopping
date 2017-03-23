//
//  ViewController.swift
//  WebViewDemo
//
//  Created by iMac on 1/6/17.
//  Copyright © 2017 NemSothea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var activityInspector: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityInspector.startAnimating()
        let url = NSURL(string: "https://alhara.net/dev/")
        let requestObj = NSURLRequest(url: url as! URL)
       myWebView.loadRequest(requestObj as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityInspector.stopAnimating()
        logoImageView.isHidden = true
        logoImageView.isOpaque = false
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityInspector.startAnimating()
    }

}

