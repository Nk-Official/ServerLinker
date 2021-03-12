//
//  Request.swift
//  Networking
//
//  Created by user on 23/07/20.
//  Copyright © 2020 Namrata Khanduri. All rights reserved.
//

import Foundation
public struct Request{
    
    var url: API
    var method: HTTPMethod
    var body: Any?
    var queryParam: [String:String]?
    var header: [String:String]?
       
    var query: [Query]?{
        var query : [Query] = []
        for (key,value) in queryParam ?? [:]
        {
            let q = Query(key: key, value: value)
            query.append(q)
        }
        return query
    }
    public init(url: API, method: HTTPMethod, body: Any? = nil ,queryParam: [String:String]? = nil, header: [String:String]? = nil){
        self.url = url
        self.method = method
        self.body = body
        self.queryParam = queryParam
        self.header = header
    }
}

