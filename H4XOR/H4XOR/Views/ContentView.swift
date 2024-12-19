//
//  ContentView.swift
//  H4XOR
//
//  Created by Lathif A.D on 29/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear{
            self.networkManager.fecthData()
        }
    }
}

#Preview {
    ContentView()
}


//let posts = [
//    Post(id: "1", title: "hy"),
//    Post(id: "2", title: "hy"),
//    Post(id: "3", title: "hy"),
//    Post(id: "4", title: "hy")
//]
