//
//  HackerSession.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import Combine
import Foundation

final class HackerNewsSession : APISession {
  private(set) var baseUrl: URL = URL(string: "https://hacker-news.firebaseio.com")!

  func get<T>(path: String) -> AnyPublisher<T, Error> where T : Decodable {
    let url = createUrl(path: path)
    let request = URLRequest(url: url)

    return URLSession.shared.dataTaskPublisher(for: request)
      .map(\.data)
      .decode(type: T.self, decoder: JSONDecoder())
      .eraseToAnyPublisher()
  }
}
