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
    @State var age: String = ""
    var body: some View {
        // TODO: Enclose this entire VStack with GeometryReader in Model 3
        GeometryReader { geometry in
                VStack {
                        // TODO: Add frame method call to this VStack in
                        // Model 3
                    VStack {
                        Text("SafeWalk Volunteer").modifier(SafeWalkText())
                            HStack {
                                Spacer()
                                Text("Name: ").modifier(SafeWalkLabel())
                                TextField("Name", text: $name).modifier(SafeWalkTextField())
                                Spacer()
                            }
                            HStack {
                                Spacer()
                                Text("Address: ").modifier(SafeWalkLabel())
                                TextField("Address", text: $address).modifier(SafeWalkTextField())
                                Spacer()
                            }
                            HStack {
                                Spacer()
                                Text("Age: ").modifier(SafeWalkLabel())
                                TextField("Age", text: $age).modifier(SafeWalkTextField())
                                Spacer()
                            }
                        }.frame(height: geometry.size.height / 2)
                        Spacer()
                        /* TODO: Replace the entire Text VStack below with
                           sub view provided in Model 2
                         */
                        VStack {
                            Text("Safewalk ID | California").font(.custom("Futura Bold", size: 26))
                            Information(name: $name, address: $address, age: $age)
                        }.modifier(SafeWalkIDText()).frame(height: geometry.size.height / 2)
                    }
                }

    }
}

// TODO: Add Information structure provided in Model 2
struct Information: View {
    @Binding var name: String
    @Binding var address: String
    @Binding var age: String
    var body: some View {
        HStack {
        Text("😄").font(.custom("Arial", size: 100)).background(Color.white)
            VStack {
                Text(name)
                Text(address)
                HStack {
                    Text("Age:")
                    Text(age)
                }
            }
        }
    }
}

// TODO: Add custom modifier below then use it to customizes your views for Model 5
struct SafeWalkText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 30))
           .foregroundColor(Color.white)
           .padding()
           .background(Color.black)
           .cornerRadius(10)
    }
}

struct SafeWalkLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Futura Bold", size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(15)
    }
}

struct SafeWalkTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Chalkboard", size: 23))
            .foregroundColor(Color.black)
            .padding()
            .background(Color.gray)
            .cornerRadius(15)
    }
}

struct SafeWalkIDText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Arial", size: 25))
            .foregroundColor(Color.black)
            .padding()
            .background(Color.yellow)
            .cornerRadius(15)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
