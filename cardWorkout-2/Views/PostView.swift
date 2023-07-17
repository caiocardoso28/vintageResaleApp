//
//  PostView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/11/23.
//

import SwiftUI

struct PostView: View {
    @State private var isMenuVisible = true
    @State private var isDescriptionVisible = false
    let post: Post
    var body: some View {
        
        // Label
        
        // Content
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.169, saturation: 0.0, brightness: 0.101)/*@END_MENU_TOKEN@*/)
                .frame(width: 10, height: 10)
                
                
                ImageContentView(photos: post.images)
                    
                    .onTapGesture {
                        withAnimation {
                            self.isMenuVisible.toggle()
                        }
                    }
                
                
                if isMenuVisible {
                    HStack {
                        Spacer()
                    
                        VStack {
                            ListingActionsView(profile: post.creator)
                        }
                        .padding(.top, 200)
                    }
                    .padding(.leading, 300.0)
                    .transition(.move(edge: .trailing))

                }
                
                if isMenuVisible {
                    VStack {
                        Spacer()
                        ListingHeaderView(post: post, isDescriptionVisible: $isDescriptionVisible)
       
                    }
                    .transition(.move(edge: .bottom))
                }
            }
        }
        .navigationTitle("\(post.title)")
        
        .ignoresSafeArea()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        
        PostView(post: post1)
        
    }
}
