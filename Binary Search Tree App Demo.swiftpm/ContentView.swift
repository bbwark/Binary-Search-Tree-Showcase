import SwiftUI

@available(iOS 16.1, *)
struct ContentView: View {
    
    @ObservedObject var model: ContentViewViewModel = ContentViewViewModel()
    
    
    @State private var infoModal = false
    
    var body: some View {
        ZStack {
            VStack {
                let button = Rectangle()
                    .frame(width: 200, height: 70)
                    .cornerRadius(10)
                    .foregroundColor(.accentColor)
                    .shadow(radius: 2)
                
                Button {
                    //InsertNumbersView Navigation
                } label: {
                    ZStack{
                        button
                        Text("Insert Numbers")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                }
                
                Button {
                    //SearchNumberView Navigation
                } label: {
                    ZStack{
                        button
                        Text("Search Number")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                }
                
                Button {
                    infoModal.toggle()
                } label: {
                    Image(systemName: "info.circle")
                        .font(.system(size: 24))
                }
                .padding(.top)
            }
            
            VStack{
                Text("Binary Search Tree")
                    .foregroundColor(.accentColor)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                Spacer()
                
                Button {
                    model.createNewTree()
                } label: {
                    Text("Clear Tree")
                }
            }
        }
        .sheet(isPresented: $infoModal) {
            InfoModalView()
        }
        
    }
}
