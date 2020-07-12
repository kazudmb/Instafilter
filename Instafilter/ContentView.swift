//
//  ContentView.swift
//  Instafilter
//
//  Created by KazukiNakano on 2020/07/12.
//  Copyright © 2020 kazu. All rights reserved.
//

import SwiftUI

//struct ContentView: View {
//    @State private var blurAmount: CGFloat = 0
//
//    var body: some View {
//        let blur = Binding<CGFloat>(
//            get: {
//                self.blurAmount
//            },
//            set: {
//                self.blurAmount = $0
//                print("New value is \(self.blurAmount)")
//            }
//        )
//
//        return VStack {
//            Text("Hello, World!")
//                .blur(radius: blurAmount)
//
//            Slider(value: blur, in: 0...20)
//        }
//    }
//}

struct ContentView: View {
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.white

    var body: some View {
        Text("Hello, World!")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                self.showingActionSheet = true
            }
        .actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                .default(Text("Red")) { self.backgroundColor = .red },
                .default(Text("Green")) { self.backgroundColor = .green },
                .default(Text("Blue")) { self.backgroundColor = .blue },
                .cancel()
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
