//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Sharu on 25/12/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import UIKit

final class FeedRefreshViewController: NSObject, FeedLoadingView {
   private(set) lazy var view = loadView()

   private let loadFeed: () -> Void
    
   init(loadFeed: @escaping () -> Void) {
   self.loadFeed = loadFeed
   }

   @objc func refresh() {
      loadFeed()
   }
    
   func display(_ viewModel: FeedLoadingViewModel) {
    if viewModel.isLoading {
             view.beginRefreshing()
         } else {
             view.endRefreshing()
         }
     }

     private func loadView() -> UIRefreshControl {
         let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
}
}
