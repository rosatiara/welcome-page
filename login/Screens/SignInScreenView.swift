//
//  SignInScreenView.swift
//  login
//
//  Created by T on 18/04/22.
//

import SwiftUI

struct SignInScreenView: View {
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    SocialLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                    SocialLoginButton(image: Image("google"), text: Text("Sign in with Google").foregroundColor(Color("PrimaryColor")))
                    Text("or get a link emailed to you").foregroundColor(Color.black.opacity(0.3))
                        .padding(.top, 20)
                        .padding(.bottom, 7)
                    EmailTextField()
                    PrimaryButton(title: "Email me a sign up link")
                        .padding(.top, 5)
                }
                Spacer()
                Spacer()
                Text("You are 100% safe.")
                    .foregroundColor(Color.black.opacity(0.5))
                Text("Read our Terms & Conditions")
                    .foregroundColor(Color("PrimaryColor"))
                    .font(.subheadline)
            }.padding(30)
        }
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

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

