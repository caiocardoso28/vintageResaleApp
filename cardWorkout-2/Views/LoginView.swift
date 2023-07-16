//
//  LoginView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/11/23.
//

import SwiftUI
import Alamofire

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var loginSuccessful = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button("Log in") {
                    let user = User(email: email, password: password)
                    login(user: user)
                }
                NavigationLink(destination: LoggedInView(), isActive: $loginSuccessful) {
                                EmptyView()
                            }
            }
            .padding()
        }
    }
    
    func login(user: User) {
        let url = "http://127.0.0.1:5000/login" // Replace with your server URL

        AF.request(url, method: .post, parameters: user, encoder: JSONParameterEncoder.default).responseJSON { response in
                switch response.result {
                case .success(let json):
                    // Print the response here
                    print("Response JSON: \(json)")
                    self.loginSuccessful = true
                case .failure(let error):
                    // Handle the error here
                    print("Error: \(error)")
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
