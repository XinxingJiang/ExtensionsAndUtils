//
//  PFUserExtension.swift
//
//  Created by Xinxing Jiang on 10/7/15.
//  Copyright © 2015 xjiang. All rights reserved.
//

import Foundation
import Parse

extension PFUser {
    // whether the user is current user
    func isCurrentUser() -> Bool {
        if let currentUser = PFUser.currentUser() {
            return self.objectId! == currentUser.objectId!
        }
        return false
    }
    
    // whether current user is admin
    func isCurrentUserAdmin() -> Bool {
        if let currentUser = PFUser.currentUser() {
            if let isAdmin = currentUser.valueForKey(Constants.IsAdmin) as? Bool {
                return isAdmin
            }
        }
        return false
    }
    
    struct Constants {
        static let IsAdmin = "isAdmin"
    }
}