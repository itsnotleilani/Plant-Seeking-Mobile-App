//
//  NoPage.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/25/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 50) {
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Text("Native Plants Seeking")
                        .font(.custom("Montserrat", size: 32))
                        .bold()
                        .padding(10)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: FirstView(), label: {
                        Text("Start!")
                            .foregroundColor(.white)
                            .font(.custom("Montserrat", size: 22))
                            .bold()
                            .frame(width:150, height:60)
                            .background(Color.green.opacity(0.8))
                            .cornerRadius(25)
                    })
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
