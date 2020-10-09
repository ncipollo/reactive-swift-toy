//
//  HackerNewsRepository.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import Combine
import Foundation

protocol HackerNewsRepository {
  func topStories() -> AnyPublisher<RepoResults<Array<Int64>>, Never>
  func newStories() -> AnyPublisher<RepoResults<Array<Int64>>, Never>
}
