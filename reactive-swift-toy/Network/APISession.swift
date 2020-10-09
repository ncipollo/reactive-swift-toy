//
//  APISession.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import Combine
import Foundation

protocol APISession {
  var baseUrl: URL {get}

  func get<T: Decodable>(path: String) -> AnyPublisher<T, Error>
}

extension APISession {
  func createUrl(path: String) -> URL {
    return URL(string:path, relativeTo: baseUrl)!
  }
}
