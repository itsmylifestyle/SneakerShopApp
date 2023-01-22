//
//  ContentView.swift
//  Maket
//
//  Created by Айбек on 21.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = ""
    @State var get = ""
    var color = #colorLiteral(red: 0, green: 0.8761811852, blue: 0, alpha: 1)
    
    var body: some View {
        VStack {
            Text(get)
            TextField("Enter your message", text: $message)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                UserDefaults.standard.set(self.message, forKey: "message")
                self.get = self.message
                self.message = ""
            }) {
                Text("Save")
                    .padding()
                    .padding(.horizontal, 25)
            }
            .background(Color(color))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .onAppear {
            guard let gotMessage = UserDefaults.standard.value(forKey: "message") else { return }
            self.get = gotMessage as! String
            //as! = typecasting
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
