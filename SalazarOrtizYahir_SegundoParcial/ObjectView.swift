//
//  ObjectView.swift
//  SalazarOrtizYahir_SegundoParcial
//
//  Created by Yahir Salazar on 27/10/25.
//

import SwiftUI
import AVFoundation

struct ObjectView: View {
    
    @State var objectVM: [Objeto] = ObjectViewModel().getObjectList()
    
    @State private var player: AVAudioPlayer?
    
    func playMusic() {
        guard let url = Bundle.main.url(forResource: "shop", withExtension: "mp3") else {
            print("No se encontró la canción en los Assets")
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.numberOfLoops = -1 // loop infinito
            player?.play()
        } catch {
            print("Error al reproducir la canción: \\(error.localizedDescription)")
        }
    }
    
    var body: some View {
        NavigationStack{
            VStack(){
                VStack(){
                    HStack{
                        Image("wizard")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding()
                        Text("It's dangerous to go alone! Take this").font(.title).foregroundColor(Color.white)
                    }
                    
                    List {
                        ForEach(objectVM, id: \.uuid)
                        { objeto in
                            ObjectCV(image: objeto.image, name: objeto.name)
                                .cornerRadius(15)
                                .padding(4)
                                .listRowInsets(EdgeInsets())
                        }
                        
                    }.onAppear(){
                        playMusic()
                    }
                    .listStyle(PlainListStyle())
                    
                }
            }.padding(.trailing)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.sheikah)
        }
    }
}

#Preview {
    ObjectView()
}
