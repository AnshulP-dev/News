//
//  NetworkManager.swift
//  News
//
//  Created by Anshul parashar on 29/07/23.
//

import Foundation

class NetworkManager: ObservableObject {

	@Published var posts = [Post]()

	func fetchData() {
		guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else {
			return
		}

		URLSession(configuration: .default).dataTask(with: url) { [weak self] data, urlResponse, error in
			if let safeData = data, error == nil {
				do {
					let result = try JSONDecoder().decode(Result.self, from: safeData)
					DispatchQueue.main.async {
						self?.posts = result.hits
					}
				} catch {
					print("News - error = \(error)")
				}
			}
		}.resume()
	}
}
