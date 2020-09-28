//
//  ContentView.swift
//  One
//
//  Created by Bia Plutarco on 28/09/20.
//  Copyright © 2020 Bia Plutarco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            List {
                Section(header: ListHeader()) {
                    Text("New word")
                    Text("New word")
                    Text("New word")
                    Text("New word")
                }
            }
            .listStyle(GroupedListStyle())
            .cornerRadius(10)
            
            Button(action: {
                print("did tap button")
            }) {
                HStack {
                    Spacer()
                    Text("New word")
                        .bold()
                        .padding()
                        .foregroundColor(Color.white)
                    Spacer()
                }
                
            }
            .background(Color.green)
            .cornerRadius(8)
        }
        .padding()
    }
    
    struct ListHeader: View {
        var body: some View {
            HStack {
                Image(systemName: "bookmark.fill")
                Text("Words that you discovered")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
