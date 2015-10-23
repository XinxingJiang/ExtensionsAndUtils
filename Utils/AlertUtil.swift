//
//  AlertController.swift
//
//  Created by Xinxing Jiang on 7/18/15.
//  Copyright (c) 2015 Parse. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 8.0, *)
class AlertUtil {
    
    // MARK: - Show normal alert
    
    class func showAlert(viewController viewController: UIViewController, title: String) {
        // show an alert with @title on the @viewController
        // user needs to click OK button to dismiss the alert
        let alert = UIAlertController(title: title, message: "", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        viewController.presentViewController(alert, animated: true, completion: nil)
    }
    
    // MARK: - Show auto disappeared alert
    
    class func showDismissAlert(viewController: UIViewController, title: String, delay: Double = 0.5) {
        // show an alert on the @viewController
        // dismiss the alert after @delay time
        let alert = UIAlertController(title: title, message: "", preferredStyle: .Alert)
        viewController.presentViewController(alert, animated: true, completion: nil)
        
        // dismiss the alert automatically after a while
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue()) { () in
            viewController.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
}
