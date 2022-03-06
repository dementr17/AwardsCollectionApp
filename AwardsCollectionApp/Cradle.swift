//
//  Cradle.swift
//  AwardsCollectionApp
//
//  Created by Дмитрий Чепанов on 06.03.2022.
//

import SwiftUI

struct Cradle: View {
    @Binding var showAward: Bool
    @Binding var width: CGFloat
    @Binding var height: CGFloat
    
    var body: some View {
        
            let middleWidth = width * 0.5
            let middleHeight = height * 0.5
        ZStack {
            Ellipse()
                .fill(.gray)
                .frame(
                    width: 1.9 * middleWidth,
                    height: 1.2 * middleHeight
                )
                .offset(x: 0, y: -0.2 * middleHeight)
            Ellipse()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [.black, .gray]),
                        center: .center,
                        startRadius: width * 0.9,
                        endRadius: width * 0.2
                    )
                )
                .frame(
                    width: 1.7 * middleWidth,
                    height: 1.1 * middleHeight
                )
                .offset(x: 0, y: -0.2 * middleHeight)
        }
            //корпус капсулы
            Path { path in
                path.move(to: CGPoint(
                    x: 0.05 * middleWidth,
                    y: 0.8 * middleHeight
                ))
                path.addQuadCurve(
                    to: CGPoint(
                        x: middleWidth,
                        y: 1.40 * middleHeight
                    ),
                    control: CGPoint(
                        x: 0.11 * middleWidth,
                        y: 1.37 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.95 * middleWidth,
                        y: 0.8 * middleHeight
                    ),
                    control: CGPoint(
                        x: 1.89 * middleWidth,
                        y: 1.37 * middleHeight
                    )
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .gray, .black]),
                    center: .center,
                    startRadius: width * 0.02,
                    endRadius: width * 0.6
                )
            )
            //низ капсулы
            Path { path in
                path.move(to: CGPoint(
                    x: 0.6 * middleWidth,
                    y: 0.75 * middleHeight
                ))
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.4 * middleWidth,
                        y: 0.75 * middleHeight
                    ),
                    control: CGPoint(
                        x: 1 * middleWidth,
                        y: 0.85 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.4 * middleWidth,
                        y: 0.95 * middleHeight
                    ),
                    control: CGPoint(
                        x: 1.9 * middleWidth,
                        y: 0.7 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 0.6 * middleWidth,
                        y: 0.95 * middleHeight
                    ),
                    control: CGPoint(
                        x: middleWidth,
                        y: 0.95 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 0.6 * middleWidth,
                        y: 0.75 * middleHeight
                    ),
                    control: CGPoint(
                        x: 0.1 * middleWidth,
                        y: 0.7 * middleHeight
                    )
                )
            }
            .fill(Color(red: 0.5, green: 0.3, blue: 0.2) )
            //kofta
            Path { path in
                path.move(to: CGPoint(
                    x: 0.05 * middleWidth,
                    y: 0.8 * middleHeight
                ))
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.95 * middleWidth,
                        y: 0.8 * middleHeight),
                    control: CGPoint(
                        x: 0.3 * middleWidth,
                        y: 0.8 * middleHeight
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.90 * middleWidth,
                        y: 0.95 * middleHeight
                    ),
                    control: CGPoint(
                        x: 1.95 * middleWidth,
                        y: 0.925 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 0.08 * middleWidth,
                        y: 0.95 * middleHeight
                    ),
                    control: CGPoint(
                        x: middleWidth,
                        y: 0.95 * middleHeight
                    )
                )
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
        ForEach(0..<3) { iteration in
            Rectangle()
                .fill(Color.white)
                .frame(
                    width: 0.1 * middleWidth,
                    height: 0.06 * middleHeight
                )
                .offset(
                    x: (CGFloat(iteration)) * -0.2 * middleWidth,
                    y: -0.21 * middleWidth
                )
        }
        //квадратики - кнопки
        }
    }

struct Cradle_Previews: PreviewProvider {
    static var previews: some View {
        Cradle(showAward: .constant(false), width: .constant(250), height: .constant(400))
    }
}
