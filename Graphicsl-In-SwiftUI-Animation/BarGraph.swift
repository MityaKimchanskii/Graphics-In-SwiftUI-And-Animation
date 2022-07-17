//
//  BarGraph.swift
//  Graphicsl-In-SwiftUI-Animation
//
//  Created by Mitya Kim on 7/17/22.
//

import Foundation
import SwiftUI

struct BarGraph: View {
    
    let reports: [Report]
    
    var body: some View {
      
        VStack {
            
            HStack(alignment: .lastTextBaseline) {
                
                ForEach(self.reports, id: \.year) { report in
                    
                    BarView(report: report)
                    
                }
            }
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
}


struct BarView: View {
    
    let report: Report
    @State private var showGraph: Bool = false
    
    var body: some View {
        
        let value = report.revenue / 10000
        let yValue = Swift.min(value * 20, 10000)
        
        return VStack {
            
            Text(String(format: "$%.2f", report.revenue))
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: self.showGraph ? CGFloat(yValue) : 0)
                .onAppear {
                    withAnimation(.linear) {
                        self.showGraph = true
                    }
                }
            
            Text(report.year)
            
        }
    }
}
