//
//  Index+Luke.swift
//  AlgoliaSearch
//
//  Created by Luke Zhao on 2018-09-27.
//  Copyright © 2018 Algolia. All rights reserved.
//

import Foundation

extension Index {
  func topSearches(completionHandler: @escaping CompletionHandler) -> Operation {
    let path = "2/searches"
    let requestBody = [
      "index": urlEncodedName
    ]
    return client.performHTTPQuery(path: path, method: .POST, body: requestBody, hostnames: client.readHosts, isSearchQuery: false, requestOptions: nil, completionHandler: completionHandler)
  }
}
