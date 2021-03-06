//
//  Utils.swift
//  ForecastApp
//
//  Created by Federico on 18/01/2022.
//

import Foundation

func formatDate(_ timestamp: Int) -> String {
    let epocTime = TimeInterval(timestamp)
    let myDate = NSDate(timeIntervalSince1970: epocTime) as Date
    
    let components = Calendar.current.dateComponents([.hour, .minute, .day, .month, .year], from: myDate)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
    let day = components.day ?? 0
    let month = components.month ?? 0
    let year = components.year ?? 0
    
    return "(\(day)/\(month) - \(hour):00)"
}
