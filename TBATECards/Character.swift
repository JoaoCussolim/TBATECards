import SwiftUI

/// Representa um único personagem do mangá "The Beginning After The End".
///
/// Cada personagem possui atributos básicos como nome, imagem, raça e descrição,
/// além de uma cor de "aura" para estilização na interface.
struct Character {
    /// O nome completo do personagem. Ex: "Arthur Leywin".
    let name: String
    /// O nome do arquivo de imagem localizado nos Assets.
    let image: String
    /// A raça do personagem. Ex: "Humano", "Elfa".
    let race: String
    /// Uma breve descrição sobre a história ou papel do personagem.
    let description: String
    /// A cor utilizada para o efeito de aura e fundo do card.
    let auraColor: Color

    /// A forma alternativa do personagem, se houver. É opcional.
    var alternateForm: AlternateForm?
}

/// A forma alternativa, permitindo trocar informações do card ao alterar para outra forma do personagem
struct AlternateForm {
    let name: String
    let image: String
}

/// Exemplos de Personagens de "The Beginning After The End"

let arthur = Character(
    name: "Arthur Leywin",
    image: "arthur",
    race: "Humano",
    description: "O protagonista reencarnado, buscando poder para proteger seus entes queridos.",
    auraColor: .purple,
    alternateForm: AlternateForm(name: "Forma Realmheart", image: "arthur_realmheart")
)

let sylvie = Character(
    name: "Sylvie",
    image: "sylvie",
    race: "Dragão",
    description: "A leal companheira de Arthur, ligada a ele por um vínculo mágico.",
    auraColor: .gray,
    alternateForm: AlternateForm(name: "Forma Dragão", image: "sylvie_dragao")
)

let tessia = Character(
    name: "Tessia Eralith",
    image: "tessia",
    race: "Elfa",
    description: "Princesa élfica e amiga de infância de Arthur.",
    auraColor: .green,
    alternateForm: AlternateForm(name: "Possuida (Cecilia)", image: "cecilia")
)

let elijah = Character(
    name: "Elijah Knight",
    image: "elijah",
    race: "Hibrido (Humano e Anão)",
    description: "Um grande amigo de Arthur durate seu tempo no colégio de Xyrus",
    auraColor: .red,
    alternateForm: AlternateForm(name: "Nico Sever (Verdadeira identidade)", image: "nico")
)
