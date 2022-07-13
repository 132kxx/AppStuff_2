//
//  UserRowView.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/12.
//

import SwiftUI

struct UserRowView: View {
    let driver: Driver
    var body: some View {
        HStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
            
            Text(driver.name)
                .font(.subheadline)
            
            Spacer()
            
            Image(systemName: "paperplane.circle.fill")
                .font(.title)
                .foregroundColor(Color(.systemBlue))
        }
        .padding()
    }
}


struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(driver: Driver(name: "누누", imageName: "person"))
    }
}
