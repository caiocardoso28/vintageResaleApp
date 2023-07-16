//
//  TopMenuView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/15/23.
//

import SwiftUI

struct TopMenuView: View {
    var body: some View {
        ZStack {
            
                
                
                
            VStack {
                HStack {
                    
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                        
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .fontWeight(.thin)
                    }
                    .padding(.leading, 15)
                    
                    
                    Spacer()
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        Image(systemName: "magnifyingglass")
                        
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .fontWeight(.thin)
                    }
                    .padding(.trailing, 15)
                    
                }.padding(.top, 5)
                
            }
        }
    }
}

struct TopMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuView()
    }
}
