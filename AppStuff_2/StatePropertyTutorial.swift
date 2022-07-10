//
//  StatePropertyTutorial.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/09.
//

import SwiftUI

struct StatePropertyTutorial: View {
    @State var count = 0
    
    var body: some View {
        VStack {
            HStack(spacing: 4) {
                Button {
                    count = count - 1
                } label: {
                    Text("-")
                        .offset(y: -2)
                        .font(.largeTitle)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
                
                
                // string interpoloation for number data type to string data type
                Text("\(count)")
                    .font(.largeTitle)
                    .frame(width: 60)
                
                Button {
                    count = count + 1
                } label: {
                    Text("+")
                        .offset(y: -2)
                        .font(.largeTitle)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }


            }
        }
    }
}

struct StatePropertyTutorial_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyTutorial()
    }
}
