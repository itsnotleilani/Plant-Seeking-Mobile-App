//
//  InfoPage.swift
//  Native Plants Seeking
//
//  Created by Chenlu Wang on 2/25/23.
//

import SwiftUI


struct CollapsibleText: View {
    let text: String
    @State private var expanded: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(text)
                .fixedSize(horizontal: false, vertical: self.expanded)
                .lineLimit(self.expanded ? nil : 3)
                .opacity(self.expanded ? 1 : 0.5)
                .frame(width: 325)


            Button(action: {
                withAnimation {
                    self.expanded.toggle()
                }
            }, label: {
                Text(self.expanded ? "Read less" : "Read more")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.green.opacity(0.8))
            })
        }
        .navigationBarHidden(true)
    }
}


struct NewEnglandAster: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 10){
                    Image("New England Aster")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    Text("New England Aster")
                        .font(.custom("Montserrat", size: 25))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.green.opacity(0.8))
                    Text("-- Symphyotrichum novae-angilae --")
                        .foregroundColor(.black)
                        .bold()
                        .font(.custom("Montserrat", size: 18))
                    
                    
                    CollapsibleText(text: "Description: The New England aster is a type of flowering plant found in North America. It is also called Michaelmas daisy and can grow up to 120 cm tall and 90 cm wide.")
                    
                    CollapsibleText(text: "Habitat: The New England aster, a perennial plant native to Missouri, can be found in various wet habitats such as prairies, meadows, thickets, valleys, and stream banks.")
                    
                    CollapsibleText(text: "Fun fact: This plant blooms from August to October and attracts monarch butterflies, other butterflies, and pollinators. The lower leaves of the plant will dry during the blooming period, which is normal and not a sign of disease.")
                    
                    CollapsibleText(text: "Relationship to MA: This plant also has cultural significance to the people of Massachusetts. It was used by Native American tribes for medicinal purposes, and it is still used in some traditional medicines today. Additionally, it is the official state flower of Massachusetts.")
                    
                    NavigationLink(destination: YesOrNo(), label: {
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

struct CanadaGoldenrod: View {

    var body: some View {
        NavigationView {
            ZStack {
            Color.green
                .opacity(0.2)
                .ignoresSafeArea()
            VStack (spacing: 10){
                Image("Canada Goldenrod")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 292.5,height: 213.5)
                Text("Canada Goldenrod")
                    .font(.custom("Montserrat", size: 25))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.green.opacity(0.8))
                Text("-- Solidago canadensis --")
                    .foregroundColor(.black)
                    .bold()
                    .font(.custom("Montserrat", size: 18))


                CollapsibleText(text: "Description: Canada goldenrod is a perennial herbaceous plant in the Asteraceae family.")
                
                CollapsibleText(text: "This is a native plant commonly found in Ontario in a variety of habitats, such as fields, meadows, forests, swamps, clearings, orchards, compost piles, roadsides, ponds, streams, fencerows, shorelines, and sometimes in cultivated fields as a weed.")
                
                CollapsibleText(text: "It's common to find this plant thriving in disturbed areas such as roadsides, power line cuts, and other similar locations.")
                
                CollapsibleText(text: "Relationship to MA: This plant has significance to the people of Massachusetts as well. It was used by Native American tribes for medicinal purposes, and it is still used in some traditional medicines today.")
            
                NavigationLink(destination: YesOrNo(), label: {
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


struct BlueMistflower: View {

   var body: some View {
       NavigationView {
           ZStack {
               Color.green
                   .opacity(0.2)
                   .ignoresSafeArea()
               VStack (spacing: 10){
                   Image("Blue Mistflower")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 292.5,height: 213.5)
                   Text("Blue Mistflower")
                       .font(.custom("Montserrat", size: 25))
                       .bold()
                       .multilineTextAlignment(.center)
                       .foregroundColor(.green.opacity(0.8))
                   Text("— Conoclinium coelestinum --")
                       .foregroundColor(.black)
                       .bold()
                       .font(.custom("Montserrat", size: 18))

                   CollapsibleText(text: "Description: Blue mistflower, also called mistflower or wild ageratum, is a perennial plant that grows in North America. It belongs to the Asteraceae family and produces blue flowers.")
                   
                   CollapsibleText(text: "Habitat: This plant can be found in wood margins, stream banks, low woods, wet meadows, and ditches.")
                   
                   CollapsibleText(text: "Fun fact:  This plant was named after the botanist William Houston, not the city in Texas.")
                   
                   CollapsibleText(text: "Relationship to MA: This plant is an important food source for wildlife, including butterflies and bees. It also plays a role in maintaining the biodiversity of wetland ecosystems.")
                   
                   NavigationLink(destination: YesOrNo(), label: {
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


struct AmericanWintergreen: View {

    var body: some View {
        NavigationView {
        ZStack {
            Color.green
                .opacity(0.2)
                .ignoresSafeArea()
            VStack (spacing: 10){
                Image("American Wintergreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 292.5,height: 213.5)
                Text("American Wintergreen")
                    .font(.custom("Montserrat", size: 25))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.green.opacity(0.8))
                Text("—- Gaultheria procumbens --")
                    .foregroundColor(.black)
                    .bold()
                    .font(.custom("Montserrat", size: 18))
 
                CollapsibleText(text: "Description: Gaultheria procumbens, also known as eastern teaberry, checkerberry, boxberry, or American wintergreen, is a plant species found in northeastern North America. It belongs to the Ericaceae family.")
                
                CollapsibleText(text: "Habitat: This plant is native to woodlands in eastern North America, ranging from Newfoundland to Manitoba and south to Minnesota, Tennessee, Virginia, Georgia, and Alabama's mountains.")
                
                CollapsibleText(text: "Fun fact: This plant contains methyl salicylate, which is derived from salicylic acid, a key ingredient in aspirin. Eastern Woodland Native Americans used wintergreen leaves to create poultices that alleviate muscle and joint pains, inflammations, and toothaches.")
                
                CollapsibleText(text: "Relationship to MA: This plant provides an important food source for wildlife, including birds and small mammals.")
    
                NavigationLink(destination: YesOrNo(), label: {
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


struct MountainLaurel: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 10){
                    Image("Mountain Laurel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 292.5,height: 213.5)
                    Text("Mountain Laurel")
                        .font(.custom("Montserrat", size: 25))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.green.opacity(0.8))
                    Text("—- Kalmia latifolia --")
                        .foregroundColor(.black)
                        .bold()
                        .font(.custom("Montserrat", size: 18))
     
                    CollapsibleText(text: "Description: Mountain laurel is an evergreen shrub from the heath family, found in many mountainous regions in eastern North America. It grows up to 3-18 feet (1-6 meters) tall and has oval leaves. Large clusters of rosy, pink, or white flowers appear above the foliage.")
                    
                    CollapsibleText(text: "Habitat: This plant grows in the understory of mixed hardwood forests, on rich, mesic sites, sandy plains, rock outcrops, and on the outer edges of floodplains east of the Mississippi.")
                    
                    CollapsibleText(text: "Fun Fact: This plant is also known as calico bush and spoonwood, and is toxic to livestock, so it is not often consumed. Its leaves were traditionally used to treat skin diseases, and the plant's hard wood was used to make spoons.")
                    
                    CollapsibleText(text: "Relation to MA: This plant is native to New England and can be seen growing wild in Rhode Island, Connecticut, and western Massachusetts. It is also native from Quebec south to Florida and west to Ohio and Tennessee.")
                    
                    NavigationLink(destination: YesOrNo(), label: {
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

struct AmericanPokeweed: View {

     var body: some View {
         NavigationView {
             ZStack {
                 Color.green
                     .opacity(0.2)
                     .ignoresSafeArea()
                 VStack (spacing: 10){
                     Image("American Pokeweed")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 292.5,height: 213.5)
                     Text("American Pokeweed")
                         .font(.custom("Montserrat", size: 25))
                         .bold()
                         .multilineTextAlignment(.center)
                         .foregroundColor(.green.opacity(0.8))
                     Text("—- Phytolacca americana --")
                         .foregroundColor(.black)
                         .bold()
                         .font(.custom("Montserrat", size: 18))
      
                     CollapsibleText(text: "Description: Pokeweed is a strong-smelling plant with a poisonous root and is native to eastern North America.")
                     
                     CollapsibleText(text: "Habitat: This plant can be found in clearings, fields, pastures, open woods, thickets, and roadsides in eastern North America.")
                     
                     CollapsibleText(text: "Fun Fact: This is a toxic plant, but it's immature shoots can be boiled and eaten as greens. The dark purple juice of its berries can also be used as fabric dye and was used to color cheap wines.")
                     
                     CollapsibleText(text: "Relation to MA: In Massachusetts, this plant is celebrated through annual festivals like 'Poke-A-Long' in Petersham and 'Pokeberry Jubilee' in Essex. These events feature food, crafts, and activities related to the plant's history and uses.")
                     NavigationLink(destination: YesOrNo(), label: {
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

struct EasternPoisonIvy: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                     .ignoresSafeArea()
                 VStack (spacing: 10){
                     Image("Eastern poison ivy")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 292.5,height: 213.5)
                     Text("Eastern Poison Ivy")
                         .font(.custom("Montserrat", size: 25))
                         .bold()
                         .multilineTextAlignment(.center)
                         .foregroundColor(.green.opacity(0.8))
                     Text("—- Toxicodendron radicans --")
                         .foregroundColor(.black)
                         .bold()
                         .font(.custom("Montserrat", size: 18))
      
                     CollapsibleText(text: "Description: Poison ivy is a flowering plant that causes a rash in most people who touch it. It is native to Asia and Eastern North America.")
                     
                     CollapsibleText(text: "Habitat: This plant is commonly found growing in many types of habitats, including woodland edges, gardens, landscapes, roadsides, and riverbanks. It grows in areas from partial shade to full sun, and is adapted to a wide range of soil moisture conditions.")
                     
                     CollapsibleText(text: "Fun Fact: Contact dermatitis caused by poison ivy and related plants is the largest contributor to the 9 million office visits and 1.6 million hospital outpatient visits for this condition in the U.S. every year.")
                     
                     CollapsibleText(text: "Relation to MA: Eastern poison ivy, the most common species of poison ivy in North America, is present in Massachusetts and can be found in many areas of the state, including wooded areas, fields, and along the edges of roads and trails.")
                     NavigationLink(destination: YesOrNo(), label: {
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

  
struct ChristmasFern: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 10){
                     Image("Christmas Fern")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 292.5,height: 213.5)
                     Text("Christmas Fern")
                         .font(.custom("Montserrat", size: 25))
                         .bold()
                         .multilineTextAlignment(.center)
                         .foregroundColor(.green.opacity(0.8))
                     Text("—- Polystichum acrostichoides --")
                         .foregroundColor(.black)
                         .bold()
                         .font(.custom("Montserrat", size: 18))
      
                     CollapsibleText(text: "Description: The Christmas fern is a sturdy, evergreen fern with shiny, green fronds that can grow up to 1-2 feet long and grow in clusters from a crownless rootstock.")
                     
                     CollapsibleText(text: "Habitat: This fern is typically found in shaded habitats like woodlands, stream banks, and rocky slopes. It can tolerate some sun if the soil is moist and is usually found in non-wetland areas.")
                    
                     CollapsibleText(text: "Fun Fact: The Christmas fern gets its name from the holly-like appearance of its foliage, which pioneers used to make Christmas wreaths. The fern's fronds start as 'fiddleheads' in the spring.")
                     
                     CollapsibleText(text: "Relation to MA: This fern is ecologically and culturally significant in Massachusetts. Its evergreen foliage is a popular symbol of the holiday season in the state and beyond.")
                    NavigationLink(destination: YesOrNo(), label: {
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


struct EasternRedCedar: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 10){
                    Image("Eastern Red Cedar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 292.5,height: 213.5)
                    Text("Eastern Red Cedar")
                        .font(.custom("Montserrat", size: 25))
                        .bold()
                         .multilineTextAlignment(.center)
                         .foregroundColor(.green.opacity(0.8))
                     Text("—- Juniperus virginiana --")
                         .foregroundColor(.black)
                         .bold()
                         .font(.custom("Montserrat", size: 18))
      
                     CollapsibleText(text: "Description: Eastern red-cedar is an aromatic evergreen tree with a narrow, columnar crown that can reach up to 90 ft in height. It grows in a pyramidal shape when young and has an angled and buttressed base when mature.")
                     
                     CollapsibleText(text: "Habitat: This tree is commonly found in dry, exposed sites and abandoned fields on ridgetops, slopes, and flat land.")
                    
                     CollapsibleText(text: "Fun Fact: This tree was once used to make pencils and is still used today to repel ticks and fleas with its chips and sawdust.")
                     
                     CollapsibleText(text: "Relation to MA: This tree has cultural significance to the people of Massachusetts and was historically used by Native American tribes for various purposes, including making tools, medicine, and ceremonial objects.")
                    NavigationLink(destination: YesOrNo(), label: {
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


     
struct Partridgeberry: View {

    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .opacity(0.2)
                    .ignoresSafeArea()
                VStack (spacing: 10){
                    Image("partridgeberry")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 292.5,height: 213.5)
                    Text("Partridgeberry")
                        .font(.custom("Montserrat", size: 25))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.green.opacity(0.8))
                    Text("— Mitchella repens --")
                        .foregroundColor(.black)
                        .bold()
                        .font(.custom("Montserrat", size: 18))
     
                    CollapsibleText(text: "Description: Mitchella repens is a low-growing woody shrub that belongs to the madder family. It is the most well-known plant in its genus and can be found in North America.")
                    
                    CollapsibleText(text: "Habitat: This is a common plant found in deciduous and coniferous forests that prefer rich organic soils and can grow in dappled sunlight to complete shade.")
                    
                    CollapsibleText(text: "Fun fact: Mitchella was named by Carolus Linnaeus to honor his friend John Mitchell, a doctor who developed a treatment for yellow fever.")
                    
                    CollapsibleText(text: "Relationship to MA: This plant has ecological significance to the people of Massachusetts, as it is an important food source for wildlife, including birds and small mammals.")
                    
                    NavigationLink(destination: YesOrNo(), label: {
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
                        
struct InfoPage_Previews: PreviewProvider {
   static var previews: some View {
       NewEnglandAster()
       CanadaGoldenrod()
       BlueMistflower()
       AmericanWintergreen()
       MountainLaurel()
       AmericanPokeweed()
       EasternPoisonIvy()
       ChristmasFern()
       EasternRedCedar()
       Partridgeberry()
       
   }
}
