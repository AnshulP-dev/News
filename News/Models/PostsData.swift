//
//  PostsData.swift
//  News
//
//  Created by Anshul parashar on 29/07/23.
//

import Foundation

struct Result: Decodable {
	let hits: [Post]
}

struct Post: Decodable, Identifiable {
	var id: String {
		return self.objectID
	}

//	var id: String {
//		return objectID
//	}

	let title: String
	let url: String?
	let points: Int
	let objectID: String
}
