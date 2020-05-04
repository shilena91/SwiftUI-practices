//
//  DetailView.swift
//  Hacker News
//
//  Created by Hoang on 3.5.2020.
//  Copyright © 2020 Hoang. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}

