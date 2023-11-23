import SwiftUI

struct Contacts: View {
    
    @State var searchText = ""
    var body: some View {
        
      
        
        NavigationView {
            List{
                
                NavigationLink("Giovanni Canela", destination: PrimoContatto ())
                NavigationLink("Nicola Del Vecchio", destination: PrimoContatto())
                NavigationLink("Gennaro Esposito", destination: PrimoContatto())
                NavigationLink("Ciro Esposito", destination: PrimoContatto())
                NavigationLink("Emanuele Paulumbo", destination: PrimoContatto())
                NavigationLink("Ted Mosby", destination: PrimoContatto())
                
                /*HStack {
                    Text("\(contatto.emoji) \(contatto.nome)")
                    Spacer()
                    Text(contatto.numero)
                }*/
            }
            .navigationTitle("Contatti")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {

                    
                    NavigationLink(destination:{
                        Keypad()
                    }, label: {
                        Text("+")
                    })
                    
                })
                ToolbarItem(placement: .topBarLeading, content:  {
                    NavigationLink(destination:{
                        PrimoContatto()
                    }, label: {
                        Text("List")
                    })
                    
                }
                            
                )
                
                ToolbarItem(placement: .bottomBar, content:  {
                    HStack {
                        
                        NavigationLink(destination:{
                            Favourites()
                        }, label: {
                            Image(systemName: "star.fill")
                                
                        })
                        Spacer()
                        NavigationLink(destination:{
                            PrimoContatto()
                        }, label: {
                            Image(systemName: "clock.fill")
                        })
                        Spacer()
                    
                        NavigationLink(destination:{
                            PrimoContatto()
                        }, label: {
                            Image(systemName: "person.fill")
                        })
                        Spacer()
                        NavigationLink(destination:{
                            Keypad()
                        }, label: {
                            Image(systemName: "squareshape.split.3x3")
                        })
                        Spacer()
                        NavigationLink(destination:{
                            Voicemail()
                        }, label: {
                            Image(systemName: "waveform")
                        })
                        
                    }
                    
                }
                            
                )
            }
                        
            }
        .searchable(text: $searchText)
        }
                
            }
        
            




struct Contatto {
    let nome: String
    let numero: String
    let emoji: String
}

/*let contattiDiEsempio = [
    Contatto(nome: "Alessia Mare", numero: "1234567890", emoji: "🌊"),
    Contatto(nome: "Bruno Cielo", numero: "2345678901", emoji: "☁️"),
    Contatto(nome: "Carla Sole", numero: "3456789012", emoji: "🌞"),
    Contatto(nome: "Davide Stelle", numero: "4567890123", emoji: "🌟"),
    Contatto(nome: "Elena Luna", numero: "5678901234", emoji: "🌙"),
    Contatto(nome: "Fabio Pianeta", numero: "6789012345", emoji: "🪐"),
    Contatto(nome: "Giulia Galassia", numero: "7890123456", emoji: "🌌"),
    Contatto(nome: "Hugo Cometa", numero: "8901234567", emoji: "☄️"),
    Contatto(nome: "Irene Orizzonte", numero: "9012345678", emoji: "🌅"),
    Contatto(nome: "Luca Oceano", numero: "0123456789", emoji: "🌊"),
    Contatto(nome: "Marco Foresta", numero: "1234509876", emoji: "🌲"),
    Contatto(nome: "Nadia Fiori", numero: "2345610987", emoji: "🌷"),
    Contatto(nome: "Oscar Montagna", numero: "3456721098", emoji: "⛰️"),
    Contatto(nome: "Paola Fiume", numero: "4567832109", emoji: "🌊"),
    Contatto(nome: "Quinto Sole", numero: "5678943210", emoji: "🌞"),
    Contatto(nome: "Rita Stella", numero: "6789054321", emoji: "🌟"),
    Contatto(nome: "Sergio Luna", numero: "7890165432", emoji: "🌙"),
    Contatto(nome: "Tina Pianeta", numero: "8901276543", emoji: "🪐"),
    Contatto(nome: "Ugo Galassia", numero: "9012387654", emoji: "🌌"),
    Contatto(nome: "Valeria Cometa", numero: "0123498765", emoji: "☄️"),
    Contatto(nome: "Walter Orizzonte", numero: "1234509876", emoji: "🌅"),
    Contatto(nome: "Xenia Oceano", numero: "2345610987", emoji: "🌊"),
    Contatto(nome: "Yuri Foresta", numero: "3456721098", emoji: "🌲"),
    Contatto(nome: "Zara Fiori", numero: "4567832109", emoji: "🌷"),
    Contatto(nome: "Aldo Montagna", numero: "5678943210", emoji: "⛰️"),
    Contatto(nome: "Bianca Fiume", numero: "6789054321", emoji: "🌊"),
    Contatto(nome: "Cesare Sole", numero: "7890165432", emoji: "🌞"),
    Contatto(nome: "Diana Stella", numero: "8901276543", emoji: "🌟"),
    Contatto(nome: "Enzo Luna", numero: "9012387654", emoji: "🌙"),
    Contatto(nome: "Federica Pianeta", numero: "0123498765", emoji: "🪐")
]*/


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}

#Preview {
    Contacts()
}
