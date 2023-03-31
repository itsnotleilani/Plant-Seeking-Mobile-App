//
//  YesPage.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/25/23.
//
import SwiftUI

struct YesPage: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 30){
                    Text("Would you like to play another round?")
                        .font(.custom("Montserrat", size: 31))
                        .bold()
                        .padding(10)
                        .multilineTextAlignment(.center)
                    
                    HStack (spacing: 20){
                        NavigationLink(destination: LoginView(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                        })
                        
                        NavigationLink(destination: ByePage(), label: {
                            Text("No")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
    
    
    
    struct YesPage_Previews: PreviewProvider {
        static var previews: some View {
            YesPage()
        }
    }
}
