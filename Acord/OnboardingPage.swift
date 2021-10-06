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
                    OnboardingHeading()
                    VStack(alignment: .leading, spacing: 8){
                        Text("Winds helps you save & invest")
                            .font(.title)
                            .bold()
                        Text("Easily save & invest in the background of life. invest your spare change, save for retirement, spend smarter, earn more, and grow your knowledge")
                            .font(.body)
                            .fontWeight(.light)
                            .lineSpacing(3)
                    }
                    
                }
                SignUpForm(email: $email, password: $password)
            }
            Spacer()
            VStack(alignment: .center, spacing: 24){
                HStack{
                    Group{
                        Circle()
                            .fill(Color(.black))
                        
                        Circle()
                            .fill(Color(.systemGray4))
                        Circle()
                            .fill(Color(.systemGray4))
                        Circle()
                            .fill(Color(.systemGray4))
                        Circle()
                            .fill(Color(.systemGray4))
                    }
                    .frame(width:10, height: 10)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Get started")
                        .font(.body)
                        .frame(maxWidth: .infinity, maxHeight: 44)
                        .background(Color(.systemPink))
                        .foregroundColor(.white)
                        .cornerRadius(24)
                })
            }
            .frame(maxWidth: .infinity)
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
                .foregroundColor(text.isEmpty ? Color(.placeholderText) : Color(.black))
        }
    }
}


struct PasswordInputField: View {
    var title: String
    @Binding var password: String
    
    init(_ title: String, password: Binding<String>) {
        self.title = title
        self._password = password
    }
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(title)
                .font(.footnote)
                .foregroundColor(Color(.label))
                .padding(.bottom, 2)
            SecureField("Create a password", text: $password)
                .font(.subheadline)
                .foregroundColor(password.isEmpty ? Color(.placeholderText) : Color(.black))
        }
    }
}

struct OnboardingHeading: View {
    var body: some View {
        HStack(alignment: .center) {
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
        .padding(.bottom, 12)
    }
}

struct SignUpForm: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack{
                Text("Sign up to get started!")
                    .font(.body)
                    .fontWeight(.light)
            }
            .padding(.bottom, 8)
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
                        PasswordInputField("Password", password: $password)
                    }
                }
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                
            }
        }
    }
}
