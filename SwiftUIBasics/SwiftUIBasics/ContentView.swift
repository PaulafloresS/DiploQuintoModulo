//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Diplomado on 08/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 99
    var body: some View {
        VStack {
            Image("pau")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 92)
                .clipShape(.circle)
                .shadow(radius: 10)
                .overlay(
                       Capsule()
                           .stroke(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .leading, endPoint: .trailing), lineWidth: 5)
                   )
            Text("Pau [Flores ](https://www.lipsum.com)")
//                .font(.title)
//                .fontWeight(.bold)
                .font(.system(size: 52, weight: .black, design: .monospaced))
                .fontDesign(.rounded)
            Text("Amateur photographer")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        
            Text("\(counter)")
                .font(.subheadline)
                .foregroundStyle(.blue)
                .padding(.top, 5)
            HStack(){
                Button("Follow"){
                    self.counter += 1
                print("do something")
            }
                .buttonStyle(.borderedProminent)
        }
    }

        
        .padding()
    }
}

#Preview {
    ContentView()
}
