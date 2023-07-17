//
//  ListingHeaderView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/13/23.
//

import SwiftUI

struct ListingHeaderView: View {
    let post: Post
    @Binding var isDescriptionVisible: Bool
    @State var buttonDirection = "chevron.up"
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 0)
                .frame(height: 90)
                
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.28, saturation: 0.032, brightness: 0.231, opacity: 0.53)/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
                    
                    
                    
            
            VStack {
                VStack {
                    
                    HStack {
                        Text(post.title)
                            
                            .fontWeight(.bold)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        Spacer()
                        Button(action: {
                            withAnimation {
                                isDescriptionVisible.toggle()
                            }
                            
                        }) {
                            Image(systemName: buttonDirection)
                            
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                .fontWeight(.thin)
                        }
                        .padding(.trailing)
                    }
                    .sheet(isPresented: $isDescriptionVisible) {
                        DescriptionView(title: post.title, price: post.price, description: "Item Describe", isDescriptionVisible: $isDescriptionVisible)
                    }
                        
                    HStack {
                        Text(post.price)
                            
                            .fontWeight(.thin)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        Spacer()
                    }
                    
                }.padding(.bottom, 10)

            }

        }
    }
}

struct ListingHeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        ListingHeaderView(post: post1, isDescriptionVisible: .constant(false))
    }
}
