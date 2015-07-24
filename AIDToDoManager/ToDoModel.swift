//
//  ToDoModel.swift
//  AIDToDoManager
//
//  Created by Ryo Morimoto on 2015/07/24.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import RealmSwift

class ToDoModel: Object {
    dynamic var title = ""
    dynamic var deadLine = NSDate()
}
