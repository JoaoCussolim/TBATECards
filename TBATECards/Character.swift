import SwiftUI

struct Character {
    let name: String
    let image: String
    let race: String
    let description: String
    let auraColor: Color

    // Propriedades para a forma alternativa
    var alternateForm: AlternateForm?
}

struct AlternateForm {
    let name: String
    let image: String
}

// Exemplos de Personagens de "The Beginning After The End"
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
