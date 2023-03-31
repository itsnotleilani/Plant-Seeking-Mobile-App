//
//  YesOrNo_Page.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/25/23.
//

import SwiftUI

struct YesOrNo: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 30){
                    Text("Is this the plant you see?")
                        .font(.custom("Montserrat", size: 32))
                        .bold()
                        .padding(10)
                        .multilineTextAlignment(.center)
                    
                    HStack (spacing: 20){
                        NavigationLink(destination: YesPage(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                        })
                        
                        NavigationLink(destination: NoPage(), label: {
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
}


struct YesOrNoView_Previews: PreviewProvider {
    static var previews: some View {
        YesOrNo()
    }
}

