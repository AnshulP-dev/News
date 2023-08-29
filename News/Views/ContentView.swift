//
//  ContentView.swift
//  News
//
//  Created by Anshul parashar on 29/07/23.
//

import SwiftUI

struct ContentView: View {

	@ObservedObject var networkManager = NetworkManager()

    var body: some View {
		NavigationView {
			List(networkManager.posts) { post in

				NavigationLink {
					DetailView(urlString: post.url)
				} label: {
					HStack(spacing: 20) {
						Text("\(post.points)")
						Text(post.title)
					}
				}
			}
			.navigationTitle("News")
		}
		.onAppear {
			networkManager.fetchData()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

