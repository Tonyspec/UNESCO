//
//  Locations.swift
//  Tracker
//
//  Created by Anton Achedžak on 14.05.2021.
//

import Foundation

class Locations: ObservableObject{
    let places:[Location]
    
    var primary: Location {
        places[0]
        
    }
    init(){
        
        let url = Bundle.main.url(forResource:"Locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
}
}
