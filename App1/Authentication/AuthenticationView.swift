//
//  SwiftUIView.swift
//  App1
//
//  Created by 이명서 on 2023/09/04.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.white
                    .ignoresSafeArea()
                
                Text("Back")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.862, green: 0.007, blue: 0.19))
                    .position(x:50, y:-15)
                
                VStack{
                    Text("Welcome!")
                        .font(.title)
                        .bold()
                    Text("Please Login:")
                        .font(.title)
                        .bold()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(100))
                        .border(.black)
                        .cornerRadius(15)
                        .border(.red,width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.0))
                        .border(.black)
                        .cornerRadius(15)
                        .border(.red,width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height:50)
                    .background(Color(red: 0.862, green: 0.007, blue: 0.19))
                    .cornerRadius(15)
                    .padding()
                    
                }
            }
            .navigationBarHidden(true)
        }
        ///func autheticateUser(username: String, password:String){///
        }
    }
    
    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack{
                AuthenticationView()
        }
    }

