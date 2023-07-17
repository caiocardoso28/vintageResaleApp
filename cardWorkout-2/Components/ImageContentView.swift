//
//  ImageContentView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/13/23.
//

import SwiftUI

struct ImageContentView: View {
    
    let photos: [String]
    
    var body: some View {
        ZStack {
            TabView {
                ForEach(photos, id: \.self) {photo in
                        ZoomableImageView(image: UIImage(named: photo)!)
                        .ignoresSafeArea()
                        
                        
                        
                        
                        
                        
                        
                }
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        .ignoresSafeArea()
        }
        
        
        
    }
}

struct ImageContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageContentView(photos: post1.images)
    }
}
