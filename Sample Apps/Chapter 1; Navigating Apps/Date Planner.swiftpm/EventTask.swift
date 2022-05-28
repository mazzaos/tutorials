//
//  EventTask.swift
//  Date Planner
//
//  Created by Lorenzo Lins Mazzarotto on 28/05/22.
//

import Foundation

struct EventTask: Identifiable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted = false
    var isNew = false
}
