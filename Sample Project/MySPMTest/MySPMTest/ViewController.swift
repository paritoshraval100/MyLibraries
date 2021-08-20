//
//  ViewController.swift
//  MySPMTest
//
//  Created by Paritosh_raval on 17/08/21.
//

import UIKit
import Package1
import Package2


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(Package1.myPackageName())
        print(Package2.myPackageName())

    }


}

