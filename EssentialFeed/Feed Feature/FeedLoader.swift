//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Sharu on 28/08/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import Foundation

public protocol FeedLoader
{
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}

