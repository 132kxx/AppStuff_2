//
//  loopTutorial.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/12.
//

import SwiftUI

struct loopTutorial: View {
    
    let drivers = [
    Driver(name: "누누", imageName: "person"),
    Driver(name: "가렌", imageName: "person"),
    Driver(name: "니달리", imageName: "person")
    ]
    
    
    var body: some View {
        VStack {
            ForEach(drivers) { top in
                UserRowView(driver: top)
            }
        }
    }
}


struct loopTutorial_Previews: PreviewProvider {
    static var previews: some View {
        loopTutorial()
    }
}
