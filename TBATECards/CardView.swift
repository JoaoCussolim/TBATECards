import SwiftUI

struct CardView: View {
    
    let dog: Dog
    
    var body: some View {
        
        VStack {
            
            Image(dog.image)
                .resizable()
                .cornerRadius(0.3)
            
            HStack {
                Text("\(dog.nome)")
                    .foregroundColor(.white)
                    .font(.system(size: 20.0))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(10)
                Text("\(dog.raca)")
                    .foregroundColor(.white)
                    .font(.system(size: 20.0))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(10)
            }
            .background(Color.purple)
        }
        .frame(width: 300, height: 300)
    }
}

struct CardView_Preview: PreviewProvider {
    static var previews: some View {
        CardView(dog: dog1)
    }
}
