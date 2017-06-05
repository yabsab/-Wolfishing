//
//  DBprofile.swift
//  -Wolfishing
//
//  Created by bjlee on 2017. 5. 15..
//  Copyright © 2017년 JY. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class UserProfileDB: Object {
    
    dynamic var User = ""
    dynamic var user_Rod = ""
    dynamic var user_Lure = ""
    dynamic var user_Reel = ""
    dynamic var user_Fishingline = ""
    dynamic var user_Infromation = ""

    func primaryKey() -> String {
        return "User"
    }
    


}


