//
//  ContentView.swift
//  login
//
//  Created by T
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sign In")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                SocialLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                SocialLoginButton(image: Image("google"), text: Text("Sign in with Google").foregroundColor(Color("PrimaryColor")))
                Text("or get a link emailed to you").foregroundColor(Color.black.opacity(0.3))
                    .padding(.vertical)
                EmailTextField()
                
            }.padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GetStartedButton: View {
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


struct EmailTextField: View {
    @State private var email: String = "" // empty by default
    var body: some View {
        TextField("Email address", text: $email)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.white))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.09), radius: 60, x: 0, y: 20)
        
    }
}
