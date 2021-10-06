//
//  ContentView.swift
//  Acord
//
//  Created by Dorian ZLATAN on 06.10.2021.
//

import SwiftUI


struct OnboardingPage: View {
    
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Group{
                VStack(alignment: .leading){
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
                    //            Spacer()
                    VStack(alignment: .leading, spacing: 8){
                        Text("Acorns helps you save & invest")
                            .font(.title)
                            .bold()
                        Text("Easily save & invest in the background of life. invest your spare change, save for retirement, spend smarter, earn more, and grow your knowledge")
                            .font(.body)
                            .fontWeight(.light)
                            .lineSpacing(3)
                    }
                }
                Group{
                    VStack{
                        Text("Sign up to get started!")
                            .font(.body)
                            .fontWeight(.light)
                    }
                    VStack{
                        ZStack{
                            VStack{
                                TextInputField("Email",text: $email)
                            }
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)

                        }
                        ZStack{
                            VStack{
                                // Secure field
                                SecureField("Password", text: $password)
                            }
                        }
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)

                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage()
    }
}

struct TextInputField: View {
    var title: String
    @Binding var text: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(title)
                .font(.footnote)
                .foregroundColor(Color(.label))
                .padding(.bottom, 2)
            TextField("Enter your email", text: $text)
                .font(.subheadline)
                .foregroundColor(Color(.placeholderText))
        }
    }
}
