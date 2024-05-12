// Adam Kaum on 12.05.2024


import Foundation
import UIKit


//create model
struct iPhoneModel {
    
    static let deviceModel = UIDevice.modelName
    
    var name: String
    var screenSize: String
    var resolution: String
    var refreshRate: Int
    var aspectRatio: String
    var dpi: Int
}


struct iPhoneModelProvider {
    static func modelDetails(for model: String) -> iPhoneModel {
        
        switch model {
        
        case "Simulator iPhone 15":
            return iPhoneModel(name: model,
                               screenSize: "4.7\"",
                               resolution: "1334 x 750 px",
                               refreshRate: 60, aspectRatio: "16:9",
                               dpi: 326)
            
        case "iPhone 8 Plus":
            return iPhoneModel(name: model,
                               screenSize: "5.5\"",
                               resolution: "1920 x 1080 px",
                               refreshRate: 60, aspectRatio: "16:9",
                               dpi: 401)
            
        
        default:
            return iPhoneModel(name: "Unknown",
                               screenSize: "",
                               resolution: "",
                               refreshRate: 0,
                               aspectRatio: "",
                               dpi: 0)
        }
    }
}


// через list скорее всего можно создать этот список
// либо через card view / group box
// либо через горизонтальную grid
