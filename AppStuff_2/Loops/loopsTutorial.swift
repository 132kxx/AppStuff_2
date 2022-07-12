//
//  loopTutorial.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/12.
//

import SwiftUI

struct loopTutorial: View {
    
    let drivers = ["누누",
                   "가렌",
                   "룰루",
                   "니달리"]
    
    var body: some View {
        VStack {
            ForEach(drivers, id: \.self) { driver in
                UserRowView(driveName: driver)
            }
        }
    }
}


struct loopTutorial_Previews: PreviewProvider {
    static var previews: some View {
        loopTutorial()
    }
}
