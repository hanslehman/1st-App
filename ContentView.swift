import SwiftUI
import Subsonic

struct ContentView: View {
    
    let names = ["Hans","Team","Signature","Hans2"]
    let columns = [
        GridItem(.adaptive(minimum: 250))
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:columns) {
                ForEach(names, id: \.self){ name in
                    Button { // This is a button
                        print("\(name) was tapped")
                        play(sound: "\(name).m4a")
                    } label: {
                        Image(name).resizable().scaledToFit().cornerRadius(25).padding(.horizontal)
                    }
                }
            }
                
            }
            .navigationTitle("Friend")
        }
        .navigationViewStyle(.stack)
    }
}
