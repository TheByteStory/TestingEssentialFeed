//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Sharu on 25/12/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
   func didRequestFeedRefresh()
}

final class FeedRefreshViewController: NSObject, FeedLoadingView {
   @IBOutlet private var view : UIRefreshControl?

   var delegate: FeedRefreshViewControllerDelegate?

   @IBAction func refresh() {
     delegate?.didRequestFeedRefresh()
   }
    
   func display(_ viewModel: FeedLoadingViewModel) {
    if viewModel.isLoading {
             view?.beginRefreshing()
         } else {
             view?.endRefreshing()
         }
     }

     
}
