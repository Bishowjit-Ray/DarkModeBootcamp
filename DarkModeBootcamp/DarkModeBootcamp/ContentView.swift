//
//  ContentView.swift
//  DarkModeBootcamp
//
//  Created by Bishowjit Ray on 22/9/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20) {
                    Text("This Color is Primary")
                        .foregroundColor(.primary)
                    Text("This Color is secondary")
                        .foregroundColor(.secondary)
                    Text("This Color is Black")
                        .foregroundColor(.black)
                    Text("This Color is White")
                        .foregroundColor(.white)
                    Text("This Color is red")
                        .foregroundColor(Color("AdaptiveColor"))
                 Text("This color is Bornohin")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
                
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        Group{
       
          ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
        }
           
    }
}
