//
//  ControlFlowTutorial.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/11.
//

import SwiftUI

struct ControlFlowTutorial: View {
    @State var darkModeEnable = false
    
    var backgroundCOlor: Color {
        if darkModeEnable {
            return .black
        } else {
            return .white
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Appearance")
                    .font(.headline)
                
                Toggle(isOn: $darkModeEnable) {
                    Image(systemName: "moon.circle.fill")
                        .font(.title2)
                        .imageScale(.medium)
                    Text("Enable Dark Mode")
                        .font(.subheadline)
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(10)
            }
            .padding()
            
            Spacer()
        }
        .background(backgroundCOlor)
    }
}

struct ControlFlowTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ControlFlowTutorial()
    }
}
