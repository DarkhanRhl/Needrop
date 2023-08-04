import SwiftUI

struct CameraView: View {
    @State private var showImagePicker: Bool = false
    @Binding var selectedImage: Image?

    var body: some View {
        VStack {
            if let image = selectedImage {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding()
            } else {
                Text("No Image Selected")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
            }
            
            Button("Select an image") {
                showImagePicker.toggle()
            }
            .buttonStyle(CustomButtonStyle())
            .sheet(isPresented: $showImagePicker) {
                ImagePickerView(selectedImage: $selectedImage)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
