//
//  Item.swift
//  Todoey
//
//  Created by Aziz Zaynutdinov on 7/2/18.
//  Copyright © 2018 Aziz Zaynutdinov. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    @objc dynamic var itemColor: String = ""
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
