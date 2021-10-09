//
//  ContentView.swift
//  TerminalSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 09/10/21.
//  The App Wizard
//  Instagram : theappwizard2408

import SwiftUI

struct ContentView: View {
    var body: some View {
       Terminal()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}































let gradient = Gradient(colors: [.black.opacity(0.8), .gray])

struct Terminal: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
        
            RoundedRectangle(cornerRadius: 35)
                .frame(width: 750, height: 750)
                .foregroundColor(.gray)
                .overlay( RoundedRectangle(cornerRadius: 35).stroke(Color.white, lineWidth: 2))
            
            RoundedRectangle(cornerRadius: 35)
                .fill(
                    LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .topTrailing)
                  )
                .frame(width: 750, height: 750)
                .foregroundColor(.gray)
            
            RoundedRectangle(cornerRadius: 35)
                .frame(width: 700, height: 700)
                .foregroundColor(.black)
                
            
            
            TerminalText()
        }
    }
}


struct TerminalText: View {
    
    @State private var codes : String = ""
    @State private var codes2 : String = ""
    @State private var thankyou : String = "> Thank You :)"
    
    var body: some View {
        ZStack{
          
            VStack{
            Text("Last login: Sat Oct  9 13:20:54 on ttys000")
            .font(.title2)
            .fontWeight(.light)
            .foregroundColor(.green.opacity(0.5))
            .offset(x: -122, y: 15)
                
            HStack{
            Text("theappwizard ~ %")
            .font(.title)
            .fontWeight(.light)
            .foregroundColor(.green)
                
                
                TextField("", text: $codes)
                .font(Font.system(size: 30))
                .foregroundColor(.green)
                .frame(width: 180, height: 40)
                
            } .offset(x: -116, y: 0)
        }
            
        }.offset(x: 0, y: -200)
        
        
        if(codes == "Hello World"){
            ZStack{
                
                
                Text("> Hello World !")
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(.green.opacity(0.7))
                    .offset(x: -10, y: 0)
                
                HelloWorld().offset(x: 420, y: 520)
                    .opacity(0.7)
                
                
                Text(thankyou)
                .font(.title2)
                .fontWeight(.light)
                .foregroundColor(.green.opacity(0.7))
                .offset(x: 0, y: 320)
                
                
                HStack{
                Text("theappwizard ~ %")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.green)
                    
                    TextField("", text: $codes2)
                    .font(Font.system(size: 30))
                    .foregroundColor(.green)
                    .frame(width: 300, height: 40)
                
                }
                .offset(x: 180, y: 359)
                   
            } .offset(x: -230, y: -130)
        }
       
    }
}
        


var images : [UIImage]! = [
    UIImage(named: "image0")!,
    UIImage(named: "image1")!,
    UIImage(named: "image2")!,
    UIImage(named: "image3")!,
    UIImage(named: "image4")!,
    UIImage(named: "image5")!,
    UIImage(named: "image6")!,
    UIImage(named: "image7")!,
    UIImage(named: "image8")!,
    UIImage(named: "image9")!,
    
    
    
    UIImage(named: "image10")!,
    UIImage(named: "image11")!,
    UIImage(named: "image12")!,
    UIImage(named: "image13")!,
    UIImage(named: "image14")!,
    UIImage(named: "image15")!,
    UIImage(named: "image16")!,
    UIImage(named: "image17")!,
    UIImage(named: "image18")!,
    UIImage(named: "image19")!,
    
    
    UIImage(named: "image20")!,
    UIImage(named: "image21")!,
    UIImage(named: "image22")!,
    UIImage(named: "image23")!,
    UIImage(named: "image24")!,
    UIImage(named: "image25")!,
    UIImage(named: "image26")!,
    UIImage(named: "image27")!,
    UIImage(named: "image28")!,
    UIImage(named: "image29")!,
    
    

     

]

let animatedImages = UIImage.animatedImage(with: images, duration: 1.5)


struct HelloWorld : UIViewRepresentable{
    
    
    func makeUIView(context: Context) -> UIView {
        
        let seqAnimview = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let seqImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        seqImage.clipsToBounds = true
        seqImage.layer.cornerRadius = 20
        seqImage.autoresizesSubviews = true
        seqImage.contentMode = UIView.ContentMode.scaleAspectFit
        seqImage.image = animatedImages
        seqAnimview.addSubview(seqImage)
        return seqAnimview
        
        
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<HelloWorld>) {
        
    }
}
