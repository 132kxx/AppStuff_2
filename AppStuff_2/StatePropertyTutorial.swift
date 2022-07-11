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
            
            Divider()
            
            
            // instagram post
            VStack(alignment:.leading) {
                // user profile photo and user name
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                    
                    Text("nunu")
                        .font(.footnote)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                }
                .padding(.horizontal, 6)
                
                // image
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .frame(height: 300)
                    .clipped()
                
                // action button
                HStack(spacing: 16) {
                    Button {
                       // Like post
                    } label: {
                        Image(systemName: "heart")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.black)
                            .imageScale(.large)
                    }
                    
                    Button {
                       // Like post
                    } label: {
                        Image(systemName: "bubble.right")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.black)
                            .imageScale(.large)
                    }
                    
                    Button {
                       // Like post
                    } label: {
                        Image(systemName: "paperplane")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(.black)
                            .imageScale(.large)
                    }
                    
                    Spacer()

                }
                .padding(.leading, 6)
                .padding(.top, 6)
                
                // likes and Text
                VStack(alignment: .leading, spacing: 6) {
                    Text("0 likes")
                        .font(.system(size: 14, weight: .semibold))
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("NUNU")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("i wanna be ios developer")
                            .font(.footnote)
                    }
                    
                }
                .padding(.top, 2)
                .padding(.leading, 12)
                
                
            }
        }
    }
}

struct StatePropertyTutorial_Previews: PreviewProvider {
    static var previews: some View {
        StatePropertyTutorial()
    }
}
