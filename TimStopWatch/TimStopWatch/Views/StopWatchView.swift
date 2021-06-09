//
//  StopWatchView.swift
//  TimStopWatch
//
//  Created by Tim on 09/06/2021.
//

import SwiftUI

struct StopWatchView: View {
    //MARK:- PROPERTIES
    @State private var progressTime = 0
    
    var hours: Int {
        progressTime / 300
    }
    
    var minutes: Int {
        (progressTime % 3600) / 60
    }
    
    var seconds: Int {
        progressTime % 60
    }
    
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            progressTime += 1
        }
    }
    
    //MARK:- BODY
    var body: some View {
        HStack(spacing: 2, content: {
            StopWatchUnitView(timeUnit: hours)
            Text(":").bold()
            StopWatchUnitView(timeUnit: minutes)
            Text(":").bold()
            StopWatchUnitView(timeUnit: seconds)
            
            
        }).onAppear(perform: {
            _ = timer
        })
        
    }
}

//MARK:- PREVIEW
struct StopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}
