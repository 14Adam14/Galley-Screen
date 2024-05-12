//Adam Kaum on 12.05.2024
//
import SwiftUI
import UIKit


struct TestTwo: View {
    // Create a UIDevice instance
    let device = UIDevice.current
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
//            Text("Device Information")
//                .font(.largeTitle)
//                .fontWeight(.bold)
            
            //Text("Device Name: \(device.name)")
            Text("Device Model: \(device.model)")
            Text("Device Localized Model: \(device.localizedModel)")
            //Text("Device System Name: \(device.systemName)")
            Text("Device System Version: \(device.systemVersion)")
            Text("Device Identifier: \(device.identifierForVendor?.uuidString ?? "N/A")")
            Text("Device Type: \(device.userInterfaceIdiom == .phone ? "iPhone" : "iPad")")
            
//            if let screenSize = UIScreen.main.bounds as CGRect? {
//                Text("Screen Width: \(screenSize.width) pixels")
//                Text("Screen Height: \(screenSize.height) pixels")
//                Text("Screen Scale: \(UIScreen.main.scale) (\(Int(UIScreen.main.scale))x)")
//            }
        }
        .padding()
    }
}





#Preview {
    TestTwo()
        .navigationTitle("Device Info")
}
