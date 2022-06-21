//
//  WebView.swift
//  HackerNews
//
//  Created by Andre Vinicius Torres Conrado on 21/06/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
        
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let string = urlString {
            if let url = URL(string: string) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
      
    }
}
