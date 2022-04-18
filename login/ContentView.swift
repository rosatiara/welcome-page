//
//  ContentView.swift
//  login
//
//  Created by T
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
            WelcomeScreenView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .font(.title3)
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color("PrimaryColor"))
            .cornerRadius(40)
    }
}


struct SignUp: View {
    var body: some View {
        HStack {
            Text("New comer?")
            Text("Sign up")
                .foregroundColor(Color("PrimaryColor"))
        }
    }
}

// for simulator purpose

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
