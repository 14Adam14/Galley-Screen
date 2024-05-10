// Adam Kaum on 10.05.2024


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color.mainBackground
            
            VStack{
                HStack{
                    Image("4pdf")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                    
                        
                    
                    VStack(alignment: .leading){
                        Text("MS Test")
                            .font(.headline)
                            .fontWeight(.heavy)
                        
                        Text("Testing the display response")
                            .font(.footnote)
                            
                    }
                    
                    }
                    .foregroundStyle(.white)
                    .padding(20)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 1)
                    
                }
            }
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    ContentView()
}
