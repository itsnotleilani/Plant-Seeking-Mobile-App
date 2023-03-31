//
//  Walkthrough_Screen.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/25/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Is the plant a fern?")
                    HStack (spacing: 20){
                        NavigationLink(destination: SecondView(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: ThirdView(), label: {
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

struct SecondView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Stem in brown scale?")
                    HStack (spacing: 20){
                        NavigationLink(destination: ChristmasFern(), label: {
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

struct ThirdView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Is it a tree?")
                    HStack (spacing: 20){
                        NavigationLink(destination: FourthView(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: FifthView(), label: {
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

struct FourthView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Does it have small pink-purple flowers?")
                    HStack (spacing: 20){
                        NavigationLink(destination: EasternRedCedar(), label: {
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

struct FifthView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Does it have a woody vine?")
                    HStack (spacing: 20){
                        NavigationLink(destination: SixthView(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: SeventhView(), label: {
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

struct SixthView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Does it have red berries?")
                    HStack (spacing: 20){
                        NavigationLink(destination: Partridgeberry(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: EasternPoisonIvy(), label: {
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

struct SeventhView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Is it a bush?")
                    HStack (spacing: 20){
                        NavigationLink(destination: EighthView(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: TenthView(), label: {
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

struct EighthView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Is the flower a golden panicle?")
                    HStack (spacing: 20){
                        NavigationLink(destination: CanadaGoldenrod(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: NinthView(), label: {
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

struct NinthView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:" Is the flower a fluffy pink-lavender flower?")
                    HStack (spacing: 20){
                        NavigationLink(destination: BlueMistflower(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: NewEnglandAster(), label: {
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

struct TenthView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Does it have glossy, leathery leaves?")
                    HStack (spacing: 20){
                        NavigationLink(destination: EleventhView(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)
                            
                        })
                        NavigationLink(destination: AmericanPokeweed(), label: {
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

struct EleventhView: View {
    var body: some View {
    
        NavigationView {
            ZStack{
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack {
                    NormalPage(question:"Does the plant have red berries?")
                    HStack (spacing: 20){
                        NavigationLink(destination: AmericanWintergreen(), label: {
                            Text("Yes")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 22))
                                .bold()
                                .frame(width:120, height:60)
                                .background(Color.green.opacity(0.8))
                                .cornerRadius(25)

                            
                        })
                        NavigationLink(destination: MountainLaurel(), label: {
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



struct NormalPage: View {
    
    var question: String
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                Text("\(question)")
                    .font(.custom("Montserrat", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                //minimum spacing when phone is reducing
                Spacer(minLength: 10)
                
            }
        }
    }
}


struct Walkthrough_ScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
        SecondView()
    }
}
