//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Sharu on 25/12/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import Foundation

public protocol FeedImageDataLoaderTask
{
    func cancel()
}

public protocol FeedImageDataLoader
{
    typealias Result = Swift.Result<Data, Error>

     func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
