import SwiftUI

struct AirdropPreviewModalView: View {
    @Environment(\.presentationMode) var presentationMode
    let airdropData: AirdropDataModel


    var body: some View {
        NavigationView {
            VStack {
                Text("Airdrop Preview")
                    .font(.custom("Helvetica Neue", size: 24))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding()

                // Show the condensed message with background color
                ZStack {
                    Color(#colorLiteral(red: 1, green: 0.34, blue: 0.34, alpha: 1)) // #FF5757
                    VStack {
                        Text("\"\(airdropData.message)\"")
                            .font(.custom("Helvetica Neue", size: 18))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding()

                        Text("Reward: \(airdropData.recompense)")
                            .font(.custom("Helvetica Neue", size: 18))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
                .cornerRadius(10)
                .padding()
//                airdropData.selectedImage
//                    .toolbar {
//                        ShareLink(
//                            item: airdropData,
//                            preview: SharePreview(
//                                airdropData.message,
//                                image: airdropData.selectedImage))
//                    }
            }
            .background(Color.black.opacity(0.8).ignoresSafeArea())
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
        }
    }

    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.left")
                .foregroundColor(.white)
                .font(.title)
        })
    }
}
