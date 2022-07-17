//
//  ContentView.swift
//  Graphicsl-In-SwiftUI-Animation
//
//  Created by Mitya Kim on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
