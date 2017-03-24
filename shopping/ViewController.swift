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
        URLCache.shared.removeAllCachedResponses()
        
        // Delete any associated cookies
        if let cookies = HTTPCookieStorage.shared.cookies {
            for cookie in cookies {
                HTTPCookieStorage.shared.deleteCookie(cookie)
            }
        }
        let url = NSURL(string: "https://alhara.net/")
        let requestObj = NSURLRequest(url: url as! URL)
       myWebView.loadRequest(requestObj as URLRequest)
        myWebView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityInspector.stopAnimating()
        logoImageView.isHidden = true
        logoImageView.isOpaque = false
        myWebView.isHidden = false
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activityInspector.startAnimating()
//        logoImageView.isHidden = true
//        logoImageView.isOpaque = false
    }

}

