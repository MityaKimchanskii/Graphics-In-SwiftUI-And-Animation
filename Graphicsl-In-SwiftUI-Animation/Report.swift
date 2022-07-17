//
//  Report.swift
//  Graphicsl-In-SwiftUI-Animation
//
//  Created by Mitya Kim on 7/17/22.
//

import Foundation

struct Report: Hashable {
    
    let year: String
    let revenue: Double
    
}

extension Report {
    
    static func all() -> [Report] {
        
        return [
            Report(year: "2022", revenue: 95000),
            Report(year: "2023", revenue: 130000),
            Report(year: "2024", revenue: 200000)        ]
    }
}
