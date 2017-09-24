//
//  CurrentWeather.swift
//  WeatherNow
//
//  Created by Ebenezer Williams on 9/23/17.
//  Copyright © 2017 Ebenezer Williams. All rights reserved.
//

import Foundation

class CurrentWeather{
    
    let temperature: Int?
    let humidity: Int?
    let precipProbability: Int?
    let summary: String?
    
    struct WeatherKeys {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipProbability = "precipProbability"
        static let summary = "summary"
    }
    
    init(weatherDictionary: [String: Any]) {
        
        temperature = weatherDictionary[WeatherKeys.temperature] as? Int
        
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble * 100)
        } else {
            humidity = nil
        }
        
        if let precipProbabilityDouble = weatherDictionary[WeatherKeys.precipProbability] as? Double {
            precipProbability = Int(precipProbabilityDouble * 100)
        } else {
            precipProbability = nil
        }
        
        summary = weatherDictionary[WeatherKeys.summary] as? String
        
    }
}







