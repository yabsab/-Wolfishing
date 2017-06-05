//
//  ProfileDB.swift
//  -Wolfishing
//
//  Created by bjlee on 2017. 5. 15..
//  Copyright © 2017년 JY. All rights reserved.
//

import UIKit
import RealmSwift
import Realm


class ProfileDB: RLMObject {

    dynamic var User : String = ""
    dynamic var user_Rod : String = ""
    dynamic var user_Lure : String = ""
    dynamic var user_Reel : String = ""
    dynamic var user_Fishingline : String = ""
    dynamic var user_Infromation : String = ""
    
    func primaryKey() -> String {
        return "User"
    }


    
}
