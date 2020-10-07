//
//  RequestTemplate.swift
//  SimpleHTTP
//
//  Created by Shunzhe Ma on R 2/10/06.
//

import Foundation
import Alamofire

struct HeaderEntry {
    var name: String
    var value: String
}

struct RequestTemplate_Category {
    var categoryID = UUID().uuidString
    var categoryName: String
    var categoryDescription: String
    var detailsURL: String
    var items: [RequestTemplate_Item]
}

struct RequestTemplate_Item {
    var templateID = UUID().uuidString
    var templateName: String
    var templateDescription: String
    var requestURL: String
    var requestMethod: HTTPMethod
    var requestParameters: [HeaderEntry]
}
