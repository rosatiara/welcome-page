//
//  WelcomeScreenView.swift
//  login
//
//  Created by T on 18/04/22.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("onboard")
                Spacer()
                GetStartedButton(title: "Get Started")
                SignInButton(title: "Sign In")
                SignUp()
                    .padding(.vertical)
            }
        }
        .padding(30)
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}