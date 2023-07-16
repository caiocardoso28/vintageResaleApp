//
//  ListingActionsView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/13/23.
//

import SwiftUI

struct ListingActionsView: View {
    let profile: String
    @State private var selection: String? = nil
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 70, height: 400)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.021, brightness: 0.463, opacity: 0.327)/*@END_MENU_TOKEN@*/)
            
                
                
                
                
            VStack {
                
                VStack {
                    NavigationLink(destination: ProfileView(), tag: "Profile", selection: $selection) { EmptyView() }
                    Button(action: {
                        self.selection = "Profile"
                            }) {
                                Image(profile)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 45, height: 50)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                                    .shadow(radius: 10)
                                    
                            }
                        .padding(.bottom, 15)
                }
                        
                Button(action: {
                    print("Button tapped!")
                }) {
                    Image(systemName: "dollarsign")
                    
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .fontWeight(.thin)
                }
                .padding(.bottom, 15)
                
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    Image(systemName: "heart")
                    
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .fontWeight(.thin)
                }
                .padding(.bottom, 15)
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    Image(systemName: "arrow.left.arrow.right")
                    
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .fontWeight(.thin)
                }
                .padding(.bottom, 15)
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    Image(systemName: "arrowshape.turn.up.right")
                    
                        .font(.system(size: 45))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .fontWeight(.thin)
                }
                
            }
        }
    }
}

struct ListingActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingActionsView(profile: post1.creator)
    }
}
