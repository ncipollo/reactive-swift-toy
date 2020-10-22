//
//  NewStoriesView.swift
//  reactive-switft-toy
//
//  Created by Nick Cipollo on 10/9/20.
//

import SwiftUI

struct NewStoriesView: View {
  let viewModel: StoriesViewModel = StoriesViewModel()
  
    var body: some View {
        Text("New Stories!")
    }
}

struct NewStoriesView_Previews: PreviewProvider {
    static var previews: some View {
        NewStoriesView()
    }
}
