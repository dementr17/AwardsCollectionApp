//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct AwardsView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 250, height: 250)
                    PathView()
                        .frame(width: 250, height: 250)
                    CurvesView()
                        .frame(width: 250, height: 250)
                    GroguView(showAward: .constant(false), widthCapsule: 250, heightCapsule: 450)
                        .frame(width: 250, height: 450)
                }
                
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
