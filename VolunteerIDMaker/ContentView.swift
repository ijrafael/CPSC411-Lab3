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
        
        GeometryReader { geometry in
            VStack {
                
                VStack {
                    Text("SafeWalk Volunteer").modifier(SafeWalkText())
                    HStack {
                        Spacer()
                        Text("Name: ").modifier(SafeWalkLabel())
                        TextField("Name", text: $name)
                        
                    }
                    HStack {
                        Spacer()
                        Text("Address: ").modifier(SafeWalkLabel())
                        TextField("Address", text: $address)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("Age: ").modifier(SafeWalkLabel())
                        TextField("Age", text: $age)
                        Spacer()
                    }
                }.frame(height: geometry.size.height / 3)
                Spacer()

                VStack {
                    Information(name: $name, address: $address, age: $age)
                }.modifier(SafeWalkID())
        }
    }
}


struct Information: View {
    @Binding var name: String
    @Binding var address: String
    @Binding var age: String
    var body: some View {
        HStack {
            Text("SafeWalk Volunteer | California")
        }
        HStack {
            Text("😄").font(.custom("Futura", size: 100)).background(.white)
            VStack {
                HStack {
                    Text("Name: \(name)").bold()
                }
                HStack {
                    Text("Address: \(address)").font(.custom("Futura", size: 18))
                    }
                HStack {
                    Text("Age: \(age)")
                }
            }
            Spacer()
        }
    }
}
    
    struct SafeWalkID: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.custom("Futura", size: 23))
                .foregroundColor(.black)
                .padding()
                .background(.yellow)
                .cornerRadius(20)
        }
    }
    
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
                .font(.custom("Arial Black", size:20))
                .foregroundColor(.indigo)
                .padding()
                .border(.black)
                .background(.green)
                .cornerRadius(15)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
