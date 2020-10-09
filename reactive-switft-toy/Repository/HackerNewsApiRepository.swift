//
//  HackerNewsApiRepository.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import Combine
import Foundation

final class HackerNewsApiRepository: HackerNewsRepository {
  private let apiSession: APISession

  init(apiSession: APISession) {
    self.apiSession = apiSession
  }

  func topStories() -> AnyPublisher<RepoResults<Array<Int64>>, Never> {
    return storyList(path: "/v0/topstories.json")
  }

  func newStories() -> AnyPublisher<RepoResults<Array<Int64>>, Never> {
    return storyList(path: "/v0/newstories.json")
  }

  private func storyList(path: String) -> AnyPublisher<RepoResults<Array<Int64>>, Never> {
    return apiSession.get(path: path)
      .map{ list in RepoResults.Success(list) }
      .replaceError(with: RepoResults.Error("API Error"))
      .eraseToAnyPublisher()
  }
}
