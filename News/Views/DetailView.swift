//
//  DetailView.swift
//  News
//
//  Created by Anshul parashar on 29/07/23.
//

import SwiftUI

struct DetailView: View {

	let urlString: String?

    var body: some View {
        WebView(urlString: urlString)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(urlString: "https://www.google.com")
    }
}
