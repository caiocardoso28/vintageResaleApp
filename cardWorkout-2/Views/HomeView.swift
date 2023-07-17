//
//  HomeView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/11/23.
//

import SwiftUI

struct PostList: Hashable {
    let items: [Post]
}


let posts: [String] = ["pants1", "pants2", "pants3", "pants4"]
let nextPosts: [String] = ["hat1", "hat2"]
let lastPosts: [String] = ["sweater1", "sweater2", "sweater3"]
let post1 = Post(title: "Carhartt Poppers", images: posts, price: "$150.00", brand: "Carhartt", color: "Olive")
let post2 = Post(title: "Looney Tunes Hat", images: nextPosts, price: "$50.00", brand: "Disney", color: "Tan/Blue")
let post3 = Post(title: "Russell Sweatshirt", images: lastPosts, price: "$60.00", brand: "Russell", color: "Navy")



//let full_listings = PostList(items: listings)

struct HomeView: View {
    let listings = [post1, post2, post3]
    @State private var path = NavigationPath()
    @State private var rackViewShowing = false
    @State private var input = ""
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                List {
                    Section {
                        ForEach(searchResults, id: \.self) {listing in
                            NavigationLink(value: listing) {
                                HStack {
                                    Image(listing.images[0])
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(10)
                                        .scaledToFit()
                                    
                                    VStack {
                                        HStack {
                                            Text(listing.title)
                                                .foregroundColor(.gray)
                                                .font(.title2)
                                            .fontWeight(.heavy)
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            Text(listing.price)
                                                .foregroundColor(.gray)
                        
                                                .font(.title3)
                                            .fontWeight(.ultraLight)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Post.self) {
                value in PostView(post: value) }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.left")
                        .foregroundColor(.gray)
                    }
                    
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                        .foregroundColor(.gray)
                        
                    }
                }
            }
            .toolbarTitleMenu {
                Button("View Rack") {
                    rackViewShowing.toggle()
                }
            }
            .sheet(isPresented: $rackViewShowing) {
                RackView(allPosts: listings, rackViewShowing: $rackViewShowing)
            }
            .navigationTitle("View")
            .navigationBarTitleDisplayMode(.inline)
        }
        .searchable(text: $input, prompt: "Look For Something")
        .ignoresSafeArea()
        
    }
    
    var searchResults: [Post] {
        if input.isEmpty {
            return listings
        } else {
            return listings.filter { $0.title.lowercased().contains(input.lowercased()) || $0.brand.lowercased().contains(input.lowercased()) ||
                $0.color.lowercased().contains(input.lowercased())
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
