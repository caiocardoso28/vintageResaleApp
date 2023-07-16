//
//  HomeView.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/11/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: MainView()) {
                Text("Click Me")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
