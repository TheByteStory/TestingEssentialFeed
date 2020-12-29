//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Sharu on 21/09/20.
//  Copyright © 2020 Sharu. All rights reserved.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    
    /// The completion handler can be invoked in any thread.
    /// Clients are reponsible to dispatch to appropriate threads, if needed.
    func get(from url: URL, completion : @escaping(Result) -> Void)
}
