//
//  ContentView.swift
//  Tracker
//
//  Created by Anton Achedžak on 13.05.2021.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image (location.heroPicture)
            .resizable()
            .scaledToFit()
            
            Text(location.name)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
            .shadow(radius: 30)
            
            Text(location.country)
            .font(.title)
            .foregroundColor(.secondary)
            Text(location.description)
            .padding(.horizontal)
            
        Text("Věděli jste, že?")
            .font(.title3)
            .bold()
            .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
    }
        .navigationTitle("Objevuj")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(location:Location.example)
            
    }
}
}
}
