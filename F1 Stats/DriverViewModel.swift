//
//  DriverViewModel.swift
//  F1 Stats
//
//  Created by Cooper Hull on 6/21/22.
//

import Foundation

// Structure for dynamically changing the year...will implement later

//let currentYear = Calendar.current.component(.year, from: Date())
//let driversURL = "http://ergast.com/api/f1/\(currentYear)/drivers.json"

class apiCall {
    func getUserComments(completion:@escaping ([Drivers]) -> ()) {
        guard let url = URL(string: "http://ergast.com/api/f1/2022/drivers.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let drivers = try! JSONDecoder().decode([Drivers].self, from: data!)
            let drivers = try! JSONDecoder().decode(Root.self, from: data!)
            print("drivers", drivers.mrdata.drivertable.drivers.givenName)
//            print(drivers)
            
            DispatchQueue.main.async {
//                completion(drivers)
                completion([drivers.mrdata.drivertable.drivers])
            }
        }
        .resume()
    }
}
