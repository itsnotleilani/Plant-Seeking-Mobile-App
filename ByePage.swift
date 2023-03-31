//
//  ByePage.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/26/23.
//

import SwiftUI

struct ByePage: View {
    var body: some View {
        ZStack {
            Color.green
                .opacity(0.2)
                .ignoresSafeArea()
            Image("byePage")
                .resizable()
                .scaledToFit()
        }
        .navigationBarHidden(true)
    }
}

struct ByePage_Previews: PreviewProvider {
    static var previews: some View {
        ByePage()
    }
}
