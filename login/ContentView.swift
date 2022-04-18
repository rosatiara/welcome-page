//
//  ContentView.swift
//  login
//
//  Created by T
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        VStack {
            SignInScreenView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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

struct SignInButton: View {
    var title: String
    var body: some View {
        Text(title)
            .fontWeight(.bold)
            .font(.title3)
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(Color("PrimaryColor"))
            .background(Color(.white))
            .cornerRadius(40)
            .shadow(color: Color.black.opacity(0.09), radius: 60, x: 0, y: 20)
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

struct SocialLoginButton: View {
    var image: Image
    var text: Text
    var body: some View {
        HStack {
            image
            Spacer()
            text
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.white))
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.09), radius: 60, x: 0, y: 20)
    }
}



