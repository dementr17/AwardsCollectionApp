//
//  HandGrogu.swift
//  AwardsCollectionApp
//
//  Created by Дмитрий Чепанов on 06.03.2022.
//

import SwiftUI

struct HandGrogu: View {
    @Binding var showAward: Bool
    @Binding var width: CGFloat
    @Binding var height: CGFloat
    var body: some View {
        let middleWidth = width * 0.5
        let middleHeight = height * 0.5
        Path { path in
            path.move(to: CGPoint(
                x: 1.4 * middleWidth,
                y: 0.7 * middleHeight
            ))
            
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.45 * middleWidth,
                    y: 0.8 * middleHeight),
                control: CGPoint(
                    x: 1.45 * middleWidth,
                    y: 0.75 * middleHeight
                )
            )
            //1
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.65 * middleWidth,
                    y: 0.75 * middleHeight),
                control: CGPoint(
                    x: 1.5 * middleWidth,
                    y: 0.77 * middleHeight
                )
            )
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.55 * middleWidth,
                    y: 0.85 * middleHeight),
                control: CGPoint(
                    x: 1.5 * middleWidth,
                    y: 0.9 * middleHeight
                )
            )
            //2
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.5 * middleWidth,
                    y: 0.9 * middleHeight),
                control: CGPoint(
                    x: 1.55 * middleWidth,
                    y: 0.9 * middleHeight
                )
            )
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.2 * middleWidth,
                    y: 0.8 * middleHeight),
                control: CGPoint(
                    x: 1.2 * middleWidth,
                    y: 0.9 * middleHeight
                )
            )
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.2 * middleWidth,
                    y: 0.75 * middleHeight),
                control: CGPoint(
                    x: 1.1 * middleWidth,
                    y: 0.7 * middleHeight
                )
            )
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.3 * middleWidth,
                    y: 0.8 * middleHeight),
                control: CGPoint(
                    x: 1.3 * middleWidth,
                    y: 0.8 * middleHeight
                )
            )
            //3 палец
            path.addQuadCurve(
                to: CGPoint(
                    x: 1.4 * middleWidth,
                    y: 0.7 * middleHeight),
                control: CGPoint(
                    x: 1.3 * middleWidth,
                    y: 0.8 * middleHeight
                )
            )
            //конец 1
        }
        .stroke()
    }
}

struct HandGrogu_Previews: PreviewProvider {
    static var previews: some View {
        HandGrogu(showAward: .constant(false), width: .constant(250), height: .constant(450))
    }
}
