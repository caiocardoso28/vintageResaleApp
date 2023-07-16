//
//  PostView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/11/23.
//

import SwiftUI

struct PostView: View {
    @State private var isImageContentViewTapped = false
    @State private var isDescriptionVisible = false
    let post: Post
    var body: some View {
        
        // Label
        
        // Content
        VStack {
            ZStack {
                ImageContentView(photos: post.images)
                    
                    //.clipped()
                    
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            self.isImageContentViewTapped.toggle()
                        }
                    }
                HStack {
                    Spacer()
                    
                    VStack {
                        ListingActionsView(profile: post.creator)
                            .opacity(isImageContentViewTapped ? 0.0 : 1.0)
                            .animation(isImageContentViewTapped ? .easeOut(duration: 0.5) : .easeIn(duration: 0.4))
                    }
                    .padding(.top, 250)
                }
                .padding(.leading, 300.0)
                
                VStack {
                    Spacer()
                    ListingHeaderView(post: post, isDescriptionVisible: $isDescriptionVisible)
                        //.transition(.opacity)
                        .opacity(isImageContentViewTapped ? 0.0 : 1.0)
                        .animation(isImageContentViewTapped ? .easeOut(duration: 0.4) : .easeIn(duration: 0.4))
                        //.padding(.top, 10)
    
                }
                
            }
            //.ignoresSafeArea()
            //Spacer()
        }
        .clipped()
        .ignoresSafeArea()
        
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: post1)
    }
}
