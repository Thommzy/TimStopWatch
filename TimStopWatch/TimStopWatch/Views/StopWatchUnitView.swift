//
//  StopWatchUnitView.swift
//  TimStopWatch
//
//  Created by Tim on 09/06/2021.
//

import SwiftUI

struct StopWatchUnitView: View {
    //MARK:- PROPERTIES
    var timeUnit: Int
    
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
        return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
    }
    
    //MARK:- BODY
    var body: some View {
        HStack( spacing: 2, content: {
            Text(timeUnitStr.substring(index: 0)).frame(width: 50).font(.system(size: 50))
            Text(timeUnitStr.substring(index: 1)).frame(width: 50).font(.system(size: 50))
        })
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 2)
        )
    }
}

//MARK:- PREVIEW
struct StopWatchUnitView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchUnitView(timeUnit: 0)
            .previewLayout(.sizeThatFits)
    }
}
