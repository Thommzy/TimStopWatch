//
//  String+Additions.swift
//  TimStopWatch
//
//  Created by Tim on 09/06/2021.
//

import Foundation

extension String {
    func substring(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
