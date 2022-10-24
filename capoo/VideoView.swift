//
//  VideoView.swift
//  capoo
//
//  Created by li on 2022/10/22.
//
import SwiftUI
import AVKit

struct VideoView: View {
    let player = AVPlayer(url: Bundle.main.url(forResource: "咖波跳起來~~!!!", withExtension: "mp4")!)
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
