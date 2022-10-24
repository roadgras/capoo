//
//  IntroductionView.swift
//  capoo
//
//  Created by li on 2022/10/22.
//

import SwiftUI

struct IntroductionView: View {
    var body: some View {
        VStack{
            TabView {
                ScrollView(.vertical){
                    VStack{
                        Text("主角介紹")
                        Image("咖波")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300,height: 300)
                        Text("        貓貓蟲咖波（英語：Bugcat Capoo），是由台灣漫畫家亞拉所創造出的漫畫角色，其設定為像貓又像蟲（豸）的藍色小怪物，平時擁有6隻腳，數量會視情況變化，暴力獵奇又萌萌可愛，最愛吃肉。")
                    }.font(.system(size: 30))
                    }
                .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.blue]), startPoint: UnitPoint(x: 0, y:-2), endPoint: UnitPoint(x: 0, y: 3)))
                .tabItem {Text("主角介紹")}
                ScrollView(.vertical){
                    Text("作品介紹")
                    Text(" ")
                    Text("        原先是作者在巴哈姆特電玩資訊站個人小屋連載的自創角色，後於2015年LINE Webtoon漫畫比賽得到短篇冠軍，而在LINE Webtoon進行連載。")
                    Text("          2020年3月已於Webtoon完結，現在在粉絲專頁與YouTube網站繼續短篇漫畫與動畫連載。")
                    VStack{
                        Link("貓貓蟲咖波的Facebook專頁", destination: URL(string: "https://www.facebook.com/capoocat")!)
                        Link("貓貓蟲咖波的IG專頁", destination: URL(string: "https://www.instagram.com/bugcat_capoo/?hl=zh-tw")!)
                        Link("貓貓蟲咖波於WEBTOON連載之漫畫", destination: URL(string: "https://www.webtoons.com/zh-hant/local/maomaochongkapo/list?title_no=394")!)
                    }.font(.system(size: 20))
                }.font(.system(size: 30))
                .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: UnitPoint(x: 0, y:-1), endPoint: UnitPoint(x: 0, y: 3)))
                .tabItem {Text("作品介紹")}
                List{
                    Text("人物簡介")
                    Section(header: Text("Start"), footer: Text("End")){
                        Text("咖波    像貓又像蟲（豸）的藍色小怪物")
                        Text("拉拉    咖波的主人，只有她有辦法制伏咖波。")
                        Text("狗狗    續咖波後，被拉拉收養的狗，咖波的朋友。")
                        Text("咪卡    粉紅色貓貓蟲。")
                        Text("黑貓蟲    黑色貓貓蟲。")
                        Text("小鷄    在漫畫中有無數隻小鷄，最終都成爲咖波的食物。")
                        Text("兔兔    雖然一直被咖波吃掉，但還是很喜歡咖波。")
                        Text("暴龍姐    時常跟咖波一起吃。")
                        Text("烏龜公車    漫畫中的公車。")
                        Text("奶泡貓    由咖啡的奶泡所組成，有自己的一家咖啡廳。")
                    }
                }
                .listStyle(.insetGrouped)
                .font(.system(size: 30))
                .tabItem {Text("人物簡介")}
            }
        }
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
