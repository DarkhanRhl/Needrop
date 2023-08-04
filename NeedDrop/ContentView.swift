import SwiftUI

struct ContentView: View {
    @State private var isShowAirdropView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                VStack {
                    Image("needrop-logo")
                    
                    Button("Airdrop message") {
                        isShowAirdropView = true
                    }
                    .buttonStyle(CustomButtonStyle())
                    .fullScreenCover(isPresented: $isShowAirdropView) {
                        AirdropView()
                    }
                }
                .padding()
                .navigationTitle("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
