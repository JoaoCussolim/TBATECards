import SwiftUI

struct ContentView: View {
    
    let charactersList = [
        CardView(character: arthur),
        CardView(character: sylvie),
        CardView(character: tessia),
        CardView(character: elijah)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<charactersList.count, id: \.self) { i in
                    charactersList[i]
                }
            }
            .navigationTitle("TBATE Cards")
        }
    }
}

#Preview {
    ContentView()
}
