//
//  HeadGrogu.swift
//  AwardsCollectionApp
//
//  Created by Дмитрий Чепанов on 06.03.2022.
//

import SwiftUI

struct HeadGrogu: View {
    @Binding var showAward: Bool
    @Binding var width: CGFloat
    @Binding var height: CGFloat
    var body: some View {
        let middleWidth = width * 0.5
        let middleHeight = height * 0.5
        Group {
            Path { path in
                path.move(to: CGPoint(
                    x: 0.65 * middleWidth,
                    y: 0.6 * middleHeight
                ))
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.35 * middleWidth,
                        y: 0.6 * middleHeight
                    ),
                    control: CGPoint(
                        x: middleWidth,
                        y: 0.5 * middleHeight
                    )
                )
                //макушка
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.8 * middleWidth,
                        y: 0.55 * middleHeight
                    ),
                    control: CGPoint(
                        x: 1.6 * middleWidth,
                        y: 0.55 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 1.4 * middleWidth,
                        y: 0.75 * middleHeight
                    ),
                    control: CGPoint(
                        x: 1.7 * middleWidth,
                        y: 0.75 * middleHeight
                    )
                )
                //правое ухо
                path.addQuadCurve(
                    to: CGPoint(
                        x: 0.6 * middleWidth,
                        y: 0.75 * middleHeight
                    ),
                    control: CGPoint(
                        x: middleWidth,
                        y: 0.85 * middleHeight
                    )
                )
                //борода
                path.addQuadCurve(
                    to: CGPoint(
                        x: 0.2 * middleWidth,
                        y: 0.55 * middleHeight
                    ),
                    control: CGPoint(
                        x: 0.4 * middleWidth,
                        y: 0.75 * middleHeight
                    )
                )
                path.addQuadCurve(
                    to: CGPoint(
                        x: 0.65 * middleWidth,
                        y: 0.6 * middleHeight
                    ),
                    control: CGPoint(
                        x: 0.4 * middleWidth,
                        y: 0.55 * middleHeight
                    )
                )
                //левое ухо
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.4, green: 0.5, blue: 0.4),
                        Color(red: 0.3, green: 0.9, blue: 0.9),
                        Color(red: 0.2, green: 0.7, blue: 0.6)
                    ]),
                    center: .center,
                    startRadius: width * 0.1,
                    endRadius: width * 0.4
                )
            )
            //раскраска грогу
            Group {
                Path { path in
                    path.move(to: CGPoint(
                        x: 0.6 * middleWidth,
                        y: 0.7 * middleHeight
                    ))
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 0.3 * middleWidth,
                            y: 0.58 * middleHeight
                        ),
                        control: CGPoint(
                            x: 0.65 * middleWidth,
                            y: 0.6 * middleHeight
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 0.6 * middleWidth,
                            y: 0.7 * middleHeight
                        ),
                        control: CGPoint(
                            x: 0.5 * middleWidth,
                            y: 0.6 * middleHeight
                        )
                    )
                }
                
                Path { path in
                    path.move(to: CGPoint(
                        x: 1.4 * middleWidth,
                        y: 0.7 * middleHeight
                    ))
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 1.7 * middleWidth,
                            y: 0.58 * middleHeight
                        ),
                        control: CGPoint(
                            x: 1.35 * middleWidth,
                            y: 0.6 * middleHeight
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 1.4 * middleWidth,
                            y: 0.7 * middleHeight
                        ),
                        control: CGPoint(
                            x: 1.45 * middleWidth,
                            y: 0.6 * middleHeight
                        )
                    )
                }
            }
            //доработка ушей
            Ellipse()
                .frame(
                    width: 0.2 * middleWidth,
                    height: showAward ?
                    0.01 * middleHeight :
                    0.075 * middleHeight
                )
                .offset(
                    x: 0.2 * middleWidth,
                    y: -0.35 * middleHeight
                )
            Circle()
                .frame(
                    width: showAward ? 0 : 0.05 * middleWidth,
                    height: 0.075 * middleHeight
                )
                .offset(
                    x: 0.17 * middleWidth,
                    y: -0.36 * middleHeight
                )
                .colorInvert()
            //левый глаз
            Ellipse()
                .frame(width: 0.2 * middleWidth,
                       height: 0.075 * middleHeight
                )
                .offset(
                    x: -0.2 * middleWidth,
                    y: -0.35 * middleHeight
                )
            Circle()
                .frame(
                    width: 0.05 * middleWidth,
                    height: 0.075 * middleHeight
                )
                .offset(
                    x: -0.23 * middleWidth,
                    y: -0.36 * middleHeight
                )
                .colorInvert()
            //правый глаз
            Group {
                Path { path in
                    path.move(to: CGPoint(
                        x: 0.99 * middleWidth,
                        y: 0.7 * middleHeight
                    ))
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: middleWidth,
                            y: 0.68 * middleHeight
                        ),
                        control: CGPoint(
                            x: 0.95 * middleWidth,
                            y: 0.69 * middleHeight
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 1.01 * middleWidth,
                            y: 0.7 * middleHeight
                        ),
                        control: CGPoint(
                            x: 1.05 * middleWidth,
                            y: 0.69 * middleHeight
                        )
                    )
                }
                .stroke()
                //нос
                Path { path in
                    path.move(to: CGPoint(
                        x: 0.9 * middleWidth,
                        y: !showAward ?
                        0.75 * middleHeight :
                        0.72 * middleHeight
                    ))
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 1.1 * middleWidth,
                            y: !showAward ?
                            0.75 * middleHeight :
                            0.72 * middleHeight
                        ),
                        control: CGPoint(
                            x: middleWidth,
                            y: !showAward ?
                            0.72 * middleHeight :
                            0.75 * middleHeight
                        )
                    )
                    path.addQuadCurve(
                        to: CGPoint(
                            x: 0.9 * middleWidth,
                            y: !showAward ?
                            0.75 * middleHeight :
                            0.72 * middleHeight
                        ),
                        control: CGPoint(
                            x: middleWidth,
                            y: !showAward ?
                            0.74 * middleHeight:
                            0.76 * middleHeight
                        )
                    )
                }
                //рот
            }
            
        }
        .rotationEffect(.degrees(showAward ? -10 : 0))
    }
}

struct HeadGrogu_Previews: PreviewProvider {
    static var previews: some View {
        HeadGrogu(showAward: .constant(false), width: .constant(250), height: .constant(450))
    }
}
