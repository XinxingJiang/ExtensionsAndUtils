//
//  PFUserUtil.swift
//
//  Created by Xinxing Jiang on 10/7/15.
//  Copyright © 2015 xjiang. All rights reserved.
//

import Foundation
import Parse

class PFUserUtil {
    class func isCurrentUserAdmin() -> Bool {
        if let currentUser = PFUser.currentUser() {
            if let isAdmin = currentUser.valueForKey(ParseFileds.IsAdmin) as? Bool {
                return isAdmin
            }
        }
        return false
    }
}