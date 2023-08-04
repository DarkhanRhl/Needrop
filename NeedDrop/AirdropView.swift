import SwiftUI

struct AirdropView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var message: String = ""
    @State private var recompense: String = ""
    @State private var selectedImage: Image?
    @State private var showModal = false
    
    
    var body: some View {
        VStack {
            
            Text("Airdrop content")
                .font(.custom("Helvetica Neue", size: 24))
                .fontWeight(.heavy)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.34, blue: 0.34, alpha: 1)))
                    .padding(.top, 100)
            
            TextField("Your message", text: $message)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.heavy)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 1, green: 0.34, blue: 0.34, alpha: 1))) // #FF5757
                )
                .foregroundColor(.white) // Text color inside the text field
                .padding(.horizontal)
            
            TextField("Reward", text: $recompense)
                .font(.custom("Helvetica Neue", size: 18))
                .fontWeight(.heavy)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 1, green: 0.34, blue: 0.34, alpha: 1))) // #FF5757
                )
                .foregroundColor(.white)
                .padding(.horizontal)
            
            CameraView(selectedImage: $selectedImage)
                .padding()
            
            Button("Show preview") {
                 showModal = true
             }
             .buttonStyle(CustomButtonStyle())
             .padding()
             .fullScreenCover(isPresented: $showModal) {
                 AirdropPreviewModalView(airdropData: AirdropDataModel(
                     message: message,
                     recompense: recompense,
                     selectedImage: selectedImage ??                     Image("needrop-logo")
                 ))
             }
            Spacer()
        }
        .padding()
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }

}

struct AirdropView_Previews: PreviewProvider {
    static var previews: some View {
        AirdropView()
    }
}
