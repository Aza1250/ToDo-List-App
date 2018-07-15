//
//  Category.swift
//  Todoey
//
//  Created by Aziz Zaynutdinov on 7/2/18.
//  Copyright © 2018 Aziz Zaynutdinov. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
//    Dynamic keyword means that we can monitor for changes in our properties while the app is running, i.e. during runtime, after the app has build.
    @objc dynamic var name: String = ""
//    This is an exmaple of a forward relationship. Inside of the Category, we have multiple Items.
//    This is a one-to-many relationship.
    let items = List<Item>()
    @objc dynamic var categoryColor: String = ""
}
