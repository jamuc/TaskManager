//
//  TaskManager.swift
//  TaskManager
//
//  Created by Jason Franklin on 06/10/2016.
//  Copyright © 2016 Jason Franklin. All rights reserved.
//

import Foundation

struct TaskManager {

    func sections() -> Array<Section> {
        var sectionArray = [Section]()

        for (sectionName, sectionTasks) in lists {
            sectionArray.append(Section(sectionName: sectionName, sectionTasks: sectionTasks))
        }

        return sectionArray
    }

    struct Section {
        var sectionName: String
        var sectionTasks: Array<String>
    }

    private var lists = [
        "Inbox": [
            "Talk to Dan",
            "Organize lunch with David",
            "Start looking into hack week"
        ],
        "Grooming": [
            "Work on TICKET 1",
            "Liase with start page team"
        ]
    ]
}
