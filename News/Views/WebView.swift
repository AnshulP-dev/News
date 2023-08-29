//
//  WebView.swift
//  News
//
//  Created by Anshul parashar on 29/07/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

	typealias UIViewType = WKWebView
	let urlString: String?

	func makeUIView(context: Context) -> WKWebView {
		return WKWebView()
	}

	func updateUIView(_ uiView: WKWebView, context: Context) {
		if let urlString = urlString, let url = URL(string: urlString) {
			uiView.load(URLRequest(url: url))
		}
	}
}

