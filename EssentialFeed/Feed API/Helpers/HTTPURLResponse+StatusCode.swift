//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Sharu on 21/01/21.
//  Copyright © 2021 Sharu. All rights reserved.
//

import Foundation

extension HTTPURLResponse {
   private static var OK_200: Int { return 200 }

   var isOK: Bool {
       return statusCode == HTTPURLResponse.OK_200
   }
}
