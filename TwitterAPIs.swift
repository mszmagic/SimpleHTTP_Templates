//
//  TwitterAPIs.swift
//  SimpleHTTP
//
//  Created by Shunzhe Ma on R 2/10/06.
//

import Foundation

let twitterAPIs = RequestTemplate_Category(categoryName: "Twitter", categoryDescription: "これらはTwitterのAPIです。次のHTTPヘッダー Authorization: Bearer を使用する必要があります。", detailsURL: "https://developer.twitter.com/ja/docs", items: [getTweets, recentSearch, userLookup])

let getTweets = RequestTemplate_Item(templateName: "GET /2/tweets", templateDescription: "Tweet IDでツイートを取得", requestURL: "https://api.twitter.com/2/tweets", requestMethod: .get, requestParameters: [.init(name: "ids", value: "1261326399320715264,1278347468690915330")])

let recentSearch = RequestTemplate_Item(templateName: "GET /2/tweets/search/recent", templateDescription: "最新のツイートを検索。", requestURL: "https://api.twitter.com/2/tweets/search/recent", requestMethod: .get, requestParameters: [.init(name: "query", value: "Swift")])

let userLookup = RequestTemplate_Item(templateName: "GET /2/users", templateDescription: "IDでTwitterユーザーを検索", requestURL: "https://api.twitter.com/2/users", requestMethod: .get, requestParameters: [.init(name: "ids", value: "2244994945,6253282")])
