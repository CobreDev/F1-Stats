//
//  DriverView.swift
//  F1 Stats
//
//  Created by Cobre on 6/17/22.
//

import SwiftUI


struct DriverView: View {

    struct Driver: Identifiable {
        let id = UUID()
        var name: String
        var team: String
        var points: Int
    }

    let drivers = [
        Driver(name: "Max Verstappen", team: "Red Bull", points: 150),
        Driver(name: "Sergio Pérez", team: "Red Bull", points: 129),
        Driver(name: "Charles Leclerc", team: "Ferrari", points: 116),
        Driver(name: "George Russell", team: "Mercedes", points: 99),
        Driver(name: "Carlos Sainz", team: "Ferrari", points: 83),
        Driver(name: "Lewis Hamilton", team: "Mercedes", points: 62),
        Driver(name: "Lando Norris", team: "McLaren", points: 50),
        Driver(name: "Valtteri Bottas", team: "Alfa Romeo", points: 40),
        Driver(name: "Esteban Ocon", team: "Alpine F1 Team", points: 31),
        Driver(name: "Pierre Gasly", team: "AlphaTauri", points: 16),
        Driver(name: "Fernando Alonso", team: "Alpine F1 Team", points: 16),
        Driver(name: "Kevin Magnussen", team: "Haas F1 Team", points: 15),
        Driver(name: "Daniel Ricciardo", team: "McLaren", points: 15),
        Driver(name: "Sebastian Vettel", team: "Aston Martin", points: 13),
        Driver(name: "Yuki Tsunoda", team: "AlphaTauri", points: 11),
        Driver(name: "Alexander Albon", team: "Williams", points: 3),
        Driver(name: "Lance Stroll", team: "Aston Martin", points: 2),
        Driver(name: "Zhou Guanyu", team: "Alfa Romeo", points: 1),
        Driver(name: "Mick Schumacher", team: "Haas F1 Team", points: 0),
        Driver(name: "Nico Hulkenberg", team: "Aston Martin", points: 0),
        Driver(name: "Nicholas Latifi", team: "Williams", points: 0)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(drivers) { driver in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(driver.givenName)
                                .font(.title2)
                            Text(driver.familyName)
                                .font(.body)
                        }
                        Spacer()
                        Text("\(driver.points)")
                    }
                }
            }.navigationTitle("Drivers")
        }
    }
}


//struct DriverView_Previews: PreviewProvider {
//    static var previews: some View {
//        DriverView()
//    }
//}
