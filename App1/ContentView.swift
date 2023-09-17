//
//  ContentView.swift
//  App1
//
//  Created by 이명서 on 2023/09/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                Text("Stock Management System")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.top, 90.0)
                    .position(x:210, y:10)
            }
            VStack{
                Image("logo")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fit)
                    .padding(.all, 100.0)
                    .position(x:210, y:350)
            }
            VStack {
                Capsule()
                    .padding(.horizontal, 55.0)
                    .padding(.vertical, 3.0)
                    .position(x:210, y:300)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(red: 0.862, green: 0.007, blue: 0.19))
                    
                
            }
                Button("Login") {
                    print("Login screen")
                }
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .position(x:210, y:680)

        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
