//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Sharu on 06/01/21.
//  Copyright © 2021 Sharu. All rights reserved.
//

import UIKit

extension UITableView {
   func dequeueReusableCell<T: UITableViewCell>() -> T {
       let identifier = String(describing: T.self)
       return dequeueReusableCell(withIdentifier: identifier) as! T
   }
}
