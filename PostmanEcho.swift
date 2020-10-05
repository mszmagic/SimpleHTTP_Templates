//
//  PostmanEcho.swift
//  SimpleHTTP
//
//  Created by Shunzhe Ma on R 2/10/06.
//

import Foundation

let PostmanEcho = RequestTemplate_Category(categoryName: "Postman Echo", categoryDescription: "こちらのサーバーはあなたが入力されたコマンドをご利用端末の画面にエコーバックします。", detailsURL: "https://docs.postman-echo.com", items: [PostmanEcho_item])

let PostmanEcho_item = RequestTemplate_Item(templateName: "GET Echo", templateDescription: "こちらのサーバーはあなたが入力されたコマンドをご利用端末の画面にエコーバックします。", requestURL: "https://postman-echo.com/get", requestMethod: .get, requestParameters: [.init(name: "key1", value: "value1"), .init(name: "key2", value: "value2")])
