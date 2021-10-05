//
//  ContentView.swift
//  Acord
//
//  Created by Dorian ZLATAN on 06.10.2021.
//

import SwiftUI

struct OnboardingPage: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "wind")
                    .foregroundColor(Color(.systemPink))
                    .font(.system(size: 28))
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Login")
                        .foregroundColor(Color(.systemGray))
                })
            }
            Spacer()
            VStack(alignment: .leading, spacing: 8){
                Text("Acorns helps you save & invest")
                    .font(.title)
                    .bold()
                Text("Easily save & invest in the background of life. invest your spare change, save for retirement, spend smarter, earn more, and grow your knowledge")
                    .font(.body)
                    .lineSpacing(3)
            }
            Spacer()
            VStack{}
        }
        .padding()
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage()
    }
}
