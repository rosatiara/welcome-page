//
//  WelcomeScreenView.swift
//  login
//
//  Created by T on 18/04/22.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("onboard")
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    NavigationLink(
                        destination: {
                            SignInScreenView()
                        },
                        label: {
                            SignInButton(title: "Sign in")
                        }).navigationBarHidden(true)
                    SignUp()
                        .padding(.vertical)
                }
            }
            .padding(30)
        }
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

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
