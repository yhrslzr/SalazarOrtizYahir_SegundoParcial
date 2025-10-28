//
//  EquipView.swift
//  SalazarOrtizYahir_SegundoParcial
//
//  Created by Yahir Salazar on 27/10/25.
//

import SwiftUI
import AVFoundation

struct EquipView: View {
    
    @State private var player: AVAudioPlayer?
    
    func playMusic() {
        guard let url = Bundle.main.url(forResource: "house", withExtension: "mp3") else {
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
        VStack{
            Text("holi :3. la música es oficial 🤓☝🏼")
        }
        .onAppear(){
            playMusic()
        }
    }
}

#Preview {
    EquipView()
}
