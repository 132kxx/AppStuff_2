//
//  ButtonsTutorial.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/09.
//

import SwiftUI

struct ButtonsTutorial: View {
    @State var backgorundColor = Color.blue
    var body: some View {
        VStack {
            Rectangle()
                .fill(backgorundColor)
                .frame(width:UIScreen.main.bounds.width, height: 300)
                .ignoresSafeArea()
            
            Button("basic Button") {
                if (backgorundColor == .blue) {
                    backgorundColor = .pink
                } else {
                    backgorundColor = .blue
                }
            }
            
            Button {
                backgorundColor = .purple
            } label: {
                Text("basic Button 2")
            }

            
            Spacer()
        }
    }
}

struct ButtonsTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsTutorial()
    }
}
