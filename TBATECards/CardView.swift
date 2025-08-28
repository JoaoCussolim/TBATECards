import SwiftUI

struct CardView: View {
    
    /// O personagem a ser exibido neste card.
    let character: Character
    /// Controla o estado de exibição do card, alternando entre a forma normal e a alternativa.
    @State private var isFlipped = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Image(isFlipped ? character.alternateForm?.image ?? character.image : character.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(character.description)
                .foregroundColor(.gray)
                .padding([.leading, .trailing, .bottom], 10)
            
            HStack {
                Text(isFlipped ? character.alternateForm?.name ?? character.name : character.name)
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
            .background(character.auraColor)
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: character.auraColor, radius: 8, x: 0, y: 0) /// Efeito de aura com sombra
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        )
        .padding()
        .onTapGesture { /// Faz o clique alterar a forma do personagem para a alternativa, caso tenha uma
            if character.alternateForm != nil {
                withAnimation(.spring()) {
                    isFlipped.toggle()
                }
            }
        }
    }
}

struct CardView_Preview: PreviewProvider {
    static var previews: some View {
        CardView(character: arthur)
    }
}
