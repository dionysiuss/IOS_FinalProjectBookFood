//
//  BackendViewController.swift
//  BookFood
//
//  Created by Dennis Chen on 2017/6/21.
//  Copyright © 2017年 teamFour. All rights reserved.
//

import Foundation
import UIKit

class BackendViewController: UIViewController{
    var brandName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let ListOrder = self.storyboard?.instantiateViewController(withIdentifier: "ListOrder") as! ListOrderTableViewController
        ListOrder.brandName = self.brandName
    }
    
}
