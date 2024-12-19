//
//  ContentView.swift
//  LathifCard
//
//  Created by Lathif A.D on 24/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.29, blue: 0.37)
                .edgesIgnoringSafeArea(.all)
           
                .foregroundStyle(.tint)
            VStack{
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white , lineWidth: 3)
                    )
                Text("ラティフ")
                    .font(Font.custom("NotoSerifJP-VariableFont_wght", size: 50))
                    .bold()
                    .foregroundColor(.white)
                Text("lathif.")
                    .font(Font.custom("Pacifico-Regular", size: 20))
                    .bold()
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+60 162 454 592", imageName: "phone.fill")
                InfoView(text: "a.lathif.a.d@gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

#Preview {
    ContentView()
}

