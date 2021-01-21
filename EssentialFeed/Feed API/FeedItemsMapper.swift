//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Sharu on 21/09/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import Foundation

internal final class FeedItemsMapper {
    
    private struct Root:Decodable
    {
        let items:[RemoteFeedItem]
    }
    
    internal static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem]
    {
        guard response.isOK, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return root.items
           
    }
    
}
