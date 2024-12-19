//
//  InfoView.swift
//  LathifCard
//
//  Created by Lathif A.D on 28/07/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {

        RoundedRectangle(cornerRadius: 25)
            .fill(Color.gray)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.init(red: 0.20, green: 0.29, blue: 0.37))
                    Text(text)                .foregroundColor(.white)
                        .font(Font.custom("NotoSerifJP-VariableFont_wght", size: 20))
                })
            .padding(.all)
    }
}


#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
