import SwiftUI
import AVFoundation
import Photos

struct CameraView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: ScanViewModel
    @State private var isImagePickerPresented = false
    
    var body: some View {
        ZStack {
            if viewModel.isLoading {
                Color.black.opacity(0.4).ignoresSafeArea()
                ProgressView("Yükleniyor...").progressViewStyle(CircularProgressViewStyle(tint: .white))
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.black)
                            .padding()
                    }
                }
                Spacer()
                Button(action: {
                    isImagePickerPresented = true
                }) {
                    Text("Fotoğraf Çek")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
        .sheet(isPresented: $isImagePickerPresented, onDismiss: handleImagePickerDismiss) {
            ImagePickerView(isPresented: $isImagePickerPresented, onImagePicked: handleImagePicked)
        }
    }
    
    func handleImagePicked(image: UIImage) {
        viewModel.uploadImage(image)
        presentationMode.wrappedValue.dismiss()
    }
    
    func handleImagePickerDismiss() {
        // Handle image picker dismiss
    }
}

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var isPresented: Bool
    var onImagePicked: (UIImage) -> Void
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        @Binding var isPresented: Bool
        var onImagePicked: (UIImage) -> Void
        
        init(isPresented: Binding<Bool>, onImagePicked: @escaping (UIImage) -> Void) {
            _isPresented = isPresented
            self.onImagePicked = onImagePicked
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                onImagePicked(image)
            }
            isPresented = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            isPresented = false
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isPresented: $isPresented, onImagePicked: onImagePicked)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
}
