//
//  ControlFlowTutorial.swift
//  AppStuff_2
//
//  Created by kxx: on 2022/07/11.
//

import SwiftUI

struct ControlFlowTutorial: View {
    @State var darkModeEnable = false
    @State var notificationsEnabled = false
    @State var faceIDEnabled = false
    
    var backgroundColor: Color {
        return darkModeEnable ? .black : .white
    }
    
    var rowBackgroundColor : Color {
        return darkModeEnable ? Color.white.opacity(0.1) : Color(.systemGroupedBackground)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(darkModeEnable ? .white : .black)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Appearance")
                    .font(.headline)
                    .foregroundColor(darkModeEnable ? .white : .black)
                
                Toggle(isOn: $darkModeEnable) {
                    Image(systemName: "moon.circle.fill")
                        .font(.title2)
                        .imageScale(.medium)
                        .foregroundColor(.blue)
                    Text("Enable Dark Mode")
                        .font(.subheadline)
                        .foregroundColor(darkModeEnable ? .white : .black)
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(rowBackgroundColor)
                .cornerRadius(10)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .padding()
            
            VStack(alignment: .leading  ) {
                Text("Account")
                    .font(.headline)
                    .foregroundColor(darkModeEnable ? .white : .black)
                
                VStack {
                    Toggle(isOn: $notificationsEnabled) {
                        Image(systemName: "bell.circle.fill")
                            .font(.title2)
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text("Notification")
                                .font(.subheadline)
                                .foregroundColor(darkModeEnable ? .white : .black)
                            if notificationsEnabled {
                                Text("Push notifications enabled")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    
                    Divider()
                    
                    Toggle(isOn: $faceIDEnabled) {
                        Image(systemName: "faceid")
                            .font(.title2)
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                        Text("Enable Face ID")
                            .font(.subheadline)
                            .foregroundColor(darkModeEnable ? .white : .black)
                    }
                    .padding(.horizontal)
                    .frame(height: 44)

                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    
                }
                .background(rowBackgroundColor)
                .cornerRadius(10)
            }
            .padding()
            
            Spacer()
        }
        .background(backgroundColor)
    }
}

struct ControlFlowTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ControlFlowTutorial()
    }
}
