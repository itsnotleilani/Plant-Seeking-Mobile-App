//
//  NoPage.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/25/23.
//
import SwiftUI

struct NoPage: View {

    var body: some View {
        NavigationView {
        ZStack {
            Color.green
                .opacity(0.2)
                .ignoresSafeArea()
            VStack (spacing: 30){
                Text("Sorry!")
                    .font(.custom("Montserrat", size: 42))
                    .bold()
                    .padding(10)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.green.opacity(0.8))
                Text("Because our database is so limited, it may not include your plant. We will keep working to include more native plant information for you in the future.")
                    .font(.custom("Montserrat", size: 19))
                    .padding(10)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)
                NavigationLink(destination: YesPage(), label: {
                    Image(systemName: "chevron.right")
                        .font(.system(size:20, weight:.semibold))
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .clipShape(Circle())
                    //circular slider
                        .overlay(
                            ZStack{
                                Circle()
                                    .stroke(Color.black.opacity(0.04),lineWidth: 4)
                                Circle()
                                    .trim(from: 0, to: 0.3)
                                    .stroke(Color.white,lineWidth: 4)
                                    .rotationEffect(.init(degrees: -90))
                            }
                                .padding(-15)
                        )
                }
            )}
        }
    }
    .navigationBarHidden(true)
 }
}


struct NoPage_Previews: PreviewProvider {
    static var previews: some View {
        NoPage()
    }
}



