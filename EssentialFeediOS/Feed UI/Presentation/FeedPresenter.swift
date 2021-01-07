//
//  FeedPresenter.swift
//  EssentialFeediOS
//
//  Created by Sharu on 29/12/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import EssentialFeed
import Foundation

struct FeedLoadingViewModel {
   let isLoading: Bool
}

protocol FeedLoadingView {
   func display(_ viewModel: FeedLoadingViewModel)
}

struct FeedViewModel {
   let feed: [FeedImage]
}

protocol FeedView {
   func display(_ viewModel: FeedViewModel)
}

final class FeedPresenter {

   private let feedView: FeedView
   private let loadingView: FeedLoadingView
    
   init(feedView: FeedView, loadingView: FeedLoadingView) {
         self.feedView = feedView
         self.loadingView = loadingView
     }
    
    static var title : String{
        return NSLocalizedString("FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the Feed View")
    }

   func didStartLoadingFeed() {
       
       loadingView.display(FeedLoadingViewModel(isLoading: true))
    }
   func didFinishLoadingFeed(with feed: [FeedImage]) {
       
         feedView.display(FeedViewModel(feed: feed))
         loadingView.display(FeedLoadingViewModel(isLoading: false))
     }

   func didFinishLoadingFeed(with error: Error) {
        
         loadingView.display(FeedLoadingViewModel(isLoading: false))
   }
}
