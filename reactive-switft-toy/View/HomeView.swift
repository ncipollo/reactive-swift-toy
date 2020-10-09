//
//  HomeView.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
      TabView {
        TopStoriesView().tabItem { Text("Top Stories") }
        NewStoriesView().tabItem { Text("New Stories") }
      }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
