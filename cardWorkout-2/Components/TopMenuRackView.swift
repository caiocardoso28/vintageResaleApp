//
//  TopMenuView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/15/23.
//

import SwiftUI

struct TopMenuRackView: View {
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Text("Close Rack")
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                        
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.right.2")
                        
                            .font(.system(size: 30))
                            .foregroundColor(.gray)
                            .shadow(radius: 5)
                            .fontWeight(.thin)
                            .rotationEffect(Angle(degrees: 90))
                    }
                    .padding(.trailing, 15)
                }
                .padding(.top, 5)
            }
        }
    }
}

struct TopMenuRackView_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuRackView()
    }
}
