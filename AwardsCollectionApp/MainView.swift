//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: duttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showAward ? 2 : 1)
                        .rotationEffect(.degrees(showAward ? 0 : 180))
//                        .animation(.easeIn(duration: 2))
                }
            }
            
            Spacer()

                GroguView(showAward: $showAward, widthCapsule: 250, heightCapsule: 450)
                    .frame(width: 250, height: 450)
                    .offset(
                        x: showAward ? 20 : 0,
                        y: showAward ? -100 : 0
                    )
                    .scaleEffect(
                        showAward ? 0.7 : 1
                    )
                    .animation(
                        .easeOut
                            .repeatCount(3),
                        value: showAward
                    )

            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func duttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
