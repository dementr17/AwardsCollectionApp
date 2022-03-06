//
//  GroguView.swift
//  AwardsCollectionApp
//
//  Created by Дмитрий Чепанов on 06.03.2022.
//

import SwiftUI

struct GroguView: View {
    @Binding var showAward: Bool
    @State var widthCapsule: CGFloat
    @State var heightCapsule: CGFloat
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Cradle(
                    showAward: $showAward,
                    width: $widthCapsule,
                    height: $heightCapsule)
                
                HeadGrogu(
                    showAward: $showAward,
                    width: $widthCapsule,
                    height: $heightCapsule
                )
            }
        }
    }
}


struct GroguView_Previews: PreviewProvider {
    static var previews: some View {
        GroguView(showAward: .constant(false), widthCapsule: 250, heightCapsule: 400)
    }
}
