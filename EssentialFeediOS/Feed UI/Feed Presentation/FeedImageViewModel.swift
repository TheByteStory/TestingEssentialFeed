//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Sharu on 28/12/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

   var hasLocation: Bool {
       return location != nil
   }

   
}
