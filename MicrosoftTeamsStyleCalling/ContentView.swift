//
//  ContentView.swift
//  MicrosoftTeamsStyleCalling
//
//  Created by Ramill Ibragimov on 05.04.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var a = false
    @State private var b = false
    @State private var c = false
    @State private var d = false
    @State private var e = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.black, Color.gray]), center: .center, startRadius: 5, endRadius: 500)
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .foregroundColor(Color.black.opacity(0.2))
                .frame(width: 350, height: 350)
                .scaleEffect(a ? 1.2 : 0.5, anchor: .center)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.1))
                .onAppear() {
                    self.a.toggle()
            }
            
            Circle()
                .foregroundColor(Color.black.opacity(0.4))
                .frame(width: 310, height: 310)
                .scaleEffect(b ? 1.2 : 0.5, anchor: .center)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.2))
                .onAppear() {
                    self.b.toggle()
            }
            
            Circle()
                .foregroundColor(Color.black.opacity(0.6))
                .frame(width: 270, height: 270)
                .scaleEffect(c ? 1.2 : 0.5, anchor: .center)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.3))
                .onAppear() {
                    self.c.toggle()
            }
            
            Image("girl")
                .resizable()
                .scaledToFill()
                .frame(width: 230, height: 230)
                .clipShape(Circle())
                .scaleEffect(d ? 1 : 1.4, anchor: .center)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.4))
                .onAppear() {
                    self.d.toggle()
            }
            
            Text("Clarissa is calling")
                .foregroundColor(.white)
                .font(.headline)
                .offset(y: 100)
                .scaleEffect(d ? 1.1 : 0.95, anchor: .center)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.6))
                    .onAppear() {
                        self.e.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
