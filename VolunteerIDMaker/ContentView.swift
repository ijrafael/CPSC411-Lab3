//
//  ContentView.swift
//  VolunteerIDMaker
//
//  Created by Paul Inventado on 2/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var address: String = ""
    var body: some View {
        // TODO: Enclose this entire VStack with GeometryReader in Model 3
        VStack {
            // TODO: Add frame method call to this VStack in Model 3
            VStack {
                Text("SafeWalk Volunteer")
                HStack {
                    Spacer()
                    Text("Name: ")
                    TextField("Name", text: $name)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Address: ")
                    TextField("Address", text: $address)
                    Spacer()
                }
            }
            Spacer()
            /* TODO: Replace the entire Text VStack below with sub view provided in Model 2
             */
            VStack {
                Text(name)
                Text(address)
            }
        }
    }
}

// TODO: Add Information structure provided in Model 2

// TODO: Add custom modifier below then use it to customizes your views for Model 5

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
