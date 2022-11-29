//
//  WebView.swift
//  H4X0R News
//
//  Created by Ryan Smetana on 9/21/20.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                UIApplication.shared.open(url)
            }
        }
    }
}
