//
//  DebugPrintVC.swift
//  Debugging
//
//  Created by ONS on 26/04/21.
//  Copyright © 2021 ONS. All rights reserved.
//
/*
 Custom debug descriptions may help you to debug your own custom objects, structs, errors, and other types.
 Debug-Print shows the instance representation that is most suitable for debugging.
 */

import UIKit

struct User: CustomStringConvertible, CustomDebugStringConvertible {
    let name: String
    let city: String
    
    var description: String {
        return "User name is \(name)"
    }
    
    var debugDescription: String {
        return "User name is \(name) and lives in city \(city)"
    }
}

class DebugPrintVC: UIViewController {
    
    //MARK:- Properties
    private var abhinay: User?
    private var guest: User?
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        abhinay = User(name: "Abhinay", city: "Pune")
        guest = User(name: "Guset", city: "None")
        
        print(abhinay ?? "")
        debugPrint(guest ?? "")
    }
}

