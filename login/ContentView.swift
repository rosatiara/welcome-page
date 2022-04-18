//
//  ContentView.swift
//  login
//
//  Created by Abu Anwar MD Abdullah on 23/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("onboard")
            Text("Get Started")
                .fontWeight(.bold)
                .font(.title3)
                .frame(maxWidth: .infinity)
                .padding(20)
                .foregroundColor(.white)
                .background(Color("PrimaryColor"))
                .cornerRadius(40)
        }
        .padding(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
