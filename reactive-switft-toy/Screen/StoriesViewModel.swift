//
//  StoriesViewModel.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import Combine
import SwiftUI

final class StoriesViewModel {
  private var cancellable: AnyCancellable?

  private let repo: HackerNewsRepository

  init() {
    let session = HackerNewsSession()
    self.repo = HackerNewsApiRepository(apiSession: session)

    cancellable = self.repo.newStories().sink(
      receiveCompletion: { value in print("completion \(value)")},
      receiveValue: { value in print("value \(value)")}
    )
  }

}
