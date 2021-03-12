//
//  ViewController.swift
//  ServerConnectExample
//
//  Created by user on 12/03/21.
//  Copyright © 2021 Namrata Khanduri. All rights reserved.
//

import UIKit
import ServerConnect

class ViewController: UIViewController {

    let router = Router()
    override func viewDidLoad() {
        super.viewDidLoad()
        hitRequest()
    }

    func hitRequest(){
        let request = Requests.homeApiRequest
        do{
            try router.hitServer(reuest: request) { (result) in
                
                switch result{
                case .success(let response):
                    print("response", response)
                case .failure(let error):
                    print("error",error)
                }
                
            }
        }catch{
            print("catched error", error.localizedDescription)
        }
    }
}
