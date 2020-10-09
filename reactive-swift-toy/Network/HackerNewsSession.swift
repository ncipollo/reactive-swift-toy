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
    var request = URLRequest(url: url)

    request.addValue("application/json", forHTTPHeaderField: "Accept")

    return URLSession.shared.dataTaskPublisher(for: request)
      .print("Debug")
      .map(\.data)
      .decode(type: T.self, decoder: JSONDecoder())
      .eraseToAnyPublisher()
  }
}
