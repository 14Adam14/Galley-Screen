// Adam Kaum on 10.05.2024

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State private var currentModel: String = iPhoneModel.deviceModel
    
    let device = UIDevice.current

    
    
    var body: some View {
        
        let model = iPhoneModelProvider.modelDetails(for: currentModel)
        
        ZStack {
            Color.mainBackground
            
            VStack{
                
                Spacer()
                
                VStack(spacing: 15) {
                    
                    MainCategoriesView(imageName: "4pdf",
                                       upperText: "MS Test",
                                       lowerText: "Testing the display response")
                    
                    MainCategoriesView(imageName: "textIcon",                                 upperText: "Text test",
                                       lowerText: "Testing the display of text in the display")
                    
                    MainCategoriesView(imageName: "radugaIcon",                               upperText: "Color test",
                                       lowerText: "Testing the display of colors on the display")
                    
                    MainCategoriesView(imageName: "infoIcon",                                 upperText: "Introdution",
                                       lowerText: "Information about the application")
                }
                
                Spacer()
                
                HStack{
                    Text("Phone information")
                        .font(.headline)
                        .foregroundStyle(.white)
                }
                
                HStack{
                    VStack(alignment: .leading){
                        Text("Device")
                        Text("iOS version")
                        Text("Screen size")
                        Text("Resolution (pixel)")
                        Text("Refresh rate")
                        Text("Aspect ratio")
                        Text("Screen destiny")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        
                        Text("\(iPhoneModel.deviceModel)")
                        Text("\(device.systemVersion)")
                    
                        Text(model.screenSize)
                        Text("\(model.resolution) px")
                        Text("\(model.refreshRate) Hz")
                        Text(model.aspectRatio)
                        Text("\(model.dpi) (xxhdpi)")
                        
                    }
                    
                }
                .padding()
                .foregroundStyle(.white)
                
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        
    }
        
   
   
}

#Preview {
    ContentView()
}





struct MainCategoriesView: View {
    
    var imageName: String
    var upperText: String
    var lowerText: String
    
    
    var body: some View {
        HStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 45)
            
            VStack(alignment: .leading){
                Text(upperText)
                    .font(.headline)
                    .fontWeight(.heavy)
                
                Text(lowerText)
                    .font(.footnote)
                
            }
            
        }
        .frame(width: 300, height: 50)
        .scaledToFit()
        .foregroundStyle(.white)
        .padding(20)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 1)
            
        }
    }
}
