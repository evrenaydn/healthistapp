//
//  ContentView.swift
//  healthist2
//
//  Created by Evren Aydın on 20.06.2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @State private var showWebView = false
    private let urlString: String = "https://health-ist.com/app/"
    

    var body: some View {
        VStack(spacing: 40){
            WebView(url: URL(string: urlString)!)
        }
    }
}

struct WebView: UIViewRepresentable{
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
