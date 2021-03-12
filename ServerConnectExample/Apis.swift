//
//  Apis.swift
//  ServerConnectExample
//
//  Created by user on 12/03/21.
//  Copyright © 2021 Namrata Khanduri. All rights reserved.
//

import Foundation
import ServerConnect
struct ModuleApi: API{
    var baseurl: String
    
    var endPoint: String
    
    init(baseUrl: String  = "https://jsonplaceholder.typicode.com/", endPoint: String) {
        self.baseurl = baseUrl
        self.endPoint = endPoint
    }
    
}

struct APIS {
    static let homeAPI = ModuleApi(endPoint: "todos/1")
}

struct Requests{
    static let homeApiRequest: Request = Request(url: APIS.homeAPI, method: .get)
}
