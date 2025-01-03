//
//  DetailView.swift
//  H4XOR
//
//  Created by Lathif A.D on 31/07/24.
//

import Foundation
import SwiftUI


struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View{
        DetailView(url: "https//www.google.com")
    }
}

