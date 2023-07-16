//
//  DescriptionView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/15/23.
//

import SwiftUI

struct DescriptionView: View {
    let title: String
    let price: String
    let description: String
    @Binding var isDescriptionVisible: Bool
    var body: some View {
        ZStack {
            
            
            VStack {
                RoundedRectangle(cornerRadius: 0)
                    
                    .ignoresSafeArea()
                    .foregroundColor(.white)
            }
            
            VStack {
                VStack {
                    
                    HStack {
                        Text(title)
                            
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Spacer()
                        Button(action: {
                            withAnimation {
                                isDescriptionVisible.toggle()
                            }
                            
                        }) {
                            Image(systemName: "chevron.down")
                            
                                .font(.system(size: 25))
                                .foregroundColor(.gray)
                                .shadow(radius: 5)
                                .fontWeight(.thin)
                        }
                        .padding(.trailing)
                    }
                    
                        
                        
                    
                    HStack {
                        Text(price)
                            .font(.title)
                            .fontWeight(.thin)
                            .foregroundColor(.gray)
                            .padding(.leading)
                        Spacer()
                    }
                    
                }
                VStack {
                    
                    
                    VStack {
                        Text ("Details")
                            .font(.title)
                            .foregroundColor(.gray)
                            .fontWeight(.heavy)
                        Text("Item Description")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                
                }
            }
            .padding(.top, 20)
            
        
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(title:"Item", price:"$0.00", description: "Item Description", isDescriptionVisible: .constant(true))
    }
}
