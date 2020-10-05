//
//  QiitaAPIs.swift
//  SimpleHTTP
//
//  Created by Shunzhe Ma on R 2/10/06.
//

import Foundation

let qiitaAPIs = RequestTemplate_Category(categoryName: "Qiita", categoryDescription: "これらはQiitaのAPIです。次のHTTPヘッダー Authorization: Bearer を使用する必要があります。", detailsURL: "https://qiita.com/api/v2/docs", items: [qiita_getAllArticles, qiita_queryItems, qiita_getItem, qiita_getAllTags, qiita_getTagDetails])

let qiita_getAllArticles = RequestTemplate_Item(templateName: "GET /api/v2/authenticated_user/items", templateDescription: "認証中のユーザの記事の一覧を作成日時の降順で返します。", requestURL: "https://qiita.com/api/v2/authenticated_user/items", requestMethod: .get, requestParameters: [.init(name: "page", value: "1"), .init(name: "per_page", value: "20")])

let qiita_queryItems = RequestTemplate_Item(templateName: "GET /api/v2/items", templateDescription: "記事の一覧を作成日時の降順で返します。", requestURL: "https://qiita.com/api/v2/items", requestMethod: .get, requestParameters: [.init(name: "query", value: "qiita+user%3AQiita")])

let qiita_getItem = RequestTemplate_Item(templateName: "GET /api/v2/items/:item_id", templateDescription: "記事を取得します。", requestURL: "https://qiita.com/api/v2/items/[item_id]", requestMethod: .get, requestParameters: [])

let qiita_getAllTags = RequestTemplate_Item(templateName: "GET /api/v2/tags", templateDescription: "タグ一覧を作成日時の降順で返します。", requestURL: "https://qiita.com/api/v2/tags", requestMethod: .get, requestParameters: [])

let qiita_getTagDetails = RequestTemplate_Item(templateName: "GET /api/v2/tags/:tag_id", templateDescription: "タグを取得します。", requestURL: "https://qiita.com/api/v2/tags/[tag_id]", requestMethod: .get, requestParameters: [])
