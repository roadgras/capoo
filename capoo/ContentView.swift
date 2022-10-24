//
//  ContentView.swift
//  capoo
//
//  Created by li on 2022/10/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
@State private var rotateDegree: Double = 0
let player = AVPlayer(url: Bundle.main.url(forResource: "咖波叫聲", withExtension: "mp3")!)
var body: some View {
    NavigationView{
        ZStack(){
            Spacer()
                .background(
                    Image("all")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 700, height: 900))
            Button(action: {
                player.seek(to: .zero)
                player.play()
            }) {
                Image("咖波")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 100, height: 100)
                     .clipShape(Circle())
                     .rotationEffect(.degrees(rotateDegree))
                     .animation(
                         .linear(duration: 30)
                         .repeatForever(autoreverses: false),
                         value: rotateDegree
                     )
                     .onAppear {
                         rotateDegree = 360
                         player.play()
                     }
                     .position(x:350,y:350)
            }
            VStack{
                Spacer()
                RowView()
            }
        }
    }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RowView: View {
    var body: some View {
        HStack{
            Spacer()
            NavigationLink{
                IntroductionView()
            }label: {
                VStack(spacing:0){
                    Image(systemName: "book.fill")
                        .font(.system(size: 30))
                    Text("作品介紹")
                        .font(.system(size: 15))
                }.foregroundColor(.black)
            }
            Spacer()
            Spacer()
            NavigationLink{
                CharacterView()
            }label: {
                VStack(spacing:0){
                    Image(systemName: "rectangle.stack.fill")
                        .font(.system(size: 30))
                    Text("全部人物")
                        .font(.system(size: 15))
                }.foregroundColor(.black)
            }
            Spacer()
            Spacer()
            NavigationLink{
                VideoView()
            }label: {
                VStack(spacing:0){
                    Image(systemName: "exclamationmark.circle.fill")
                        .font(.system(size: 30))
                    Text("小短片")
                        .font(.system(size: 15))
                }.foregroundColor(.black)
            }
            Spacer()
        }.offset(x: -10, y: 0)
    }
}
