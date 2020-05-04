//
//  WebView.swift
//  Hacker News
//
//  Created by Hoang on 3.5.2020.
//  Copyright © 2020 Hoang. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let string = urlString {
            if let url = URL(string: string) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
