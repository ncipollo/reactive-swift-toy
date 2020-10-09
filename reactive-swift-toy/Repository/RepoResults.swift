//
//  HackerNewsRepoResults.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import SwiftUI

enum RepoResults<T> {
  case Success(T)
  case Error(String)
}
