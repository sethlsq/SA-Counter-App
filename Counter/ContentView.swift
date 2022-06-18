//
//  ContentView.swift
//  Flag Raising
//
//  Created by Seth Loh on 21/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var rickcounter = 0
    
    var body: some View {
        VStack {
            Text("Rickroller")
                .bold()
                .font(.system(size: 50))
            Text("\(rickcounter)")
            Image("\(counter)")
            VStack {
                Button {
                    withAnimation {
                        if counter < 28 {
                            counter += 1
                        } else if counter == 28 {
                                counter = 0
                        }
                    }
                rickcounter += 1
                } label: {
                    Text("Roll")
                        .font(.body)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
            Button {
                
            rickcounter = 0
            } label: {
                Text("Reset")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
