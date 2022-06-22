//
//  OrderView.swift
//  F1 Stats
//
//  Created by Cobre on 6/17/22.
//

import SwiftUI

struct ConstructorView: View {
    
    struct Constructor: Identifiable {
        let id = UUID()
        var name: String
        var country: String
        var points: Int
    }
    
    let constructors = [
        Constructor(name: "Red Bull", country: "🇦🇹 Austria", points: 279),
        Constructor(name: "Ferrari", country: "🇮🇹 Italy", points: 199),
        Constructor(name: "Mercedes", country: "🇩🇪 Germany", points: 161),
        Constructor(name: "McLaren", country: "🇬🇧 United Kingdon", points: 65),
        Constructor(name: "Alpine F1 Team", country: "🇫🇷 France", points: 47),
        Constructor(name: "Alfa Romeo", country: "🇨🇭 Switzerland", points: 41),
        Constructor(name: "AlfaTauri", country: "🇮🇹 Italy", points: 27),
        Constructor(name: "Haas F1 Team", country: "🇺🇸 United States", points: 15),
        Constructor(name: "Aston Martin", country: "🇬🇧 United Kingdon", points: 15),
        Constructor(name: "Williams", country: "🇬🇧 United Kingdon", points: 3)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(constructors) { constructor in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(constructor.name)
                                .font(.title2)
                            Text(constructor.country)
                                .font(.body)
                        }
                        Spacer()
                        Text("\(constructor.points)")

                    }
                }
            }.navigationTitle("Teams")
            
        }
    }
}

struct ConstructorView_Previews: PreviewProvider {
    static var previews: some View {
        ConstructorView()
    }
}
