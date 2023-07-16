//
//  Post.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/11/23.
//

import Foundation

struct Post: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let images: [String]
    let creator: String = "photo3" // image string
    let price: String
}


