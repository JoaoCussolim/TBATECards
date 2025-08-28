import SwiftUI

struct CardView: View {
    
    let character: Character
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Image(character.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(character.description)
                .foregroundColor(.gray)
                .padding([.leading, .trailing, .bottom], 10)
            
            HStack {
                Text(character.name)
                    .foregroundColor(.white)
                    .font(.system(size: 20.0))
                    .fontWeight(.bold)
                
                Spacer()
                
                Text(character.race)
                    .foregroundColor(.white)
                    .font(.system(size: 16.0))
                    .fontWeight(.semibold)
            }
            .padding(12)
            .background(Color.purple)
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
        .padding()
    }
}

struct CardView_Preview: PreviewProvider {
    static var previews: some View {
        CardView(character: arthur)
    }
}
