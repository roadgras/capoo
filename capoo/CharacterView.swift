//
//  CharacterView.swift
//  capoo
//
//  Created by li on 2022/10/22.
//

import SwiftUI

struct CharacterView: View {
    let m = ["咖波",
                "狗狗",
                "兔兔"]
    let s = ["咪卡",
                    "小鷄",
                    "拉拉",
                    "暴龍",
                    "烏龜",
                    "奶泡貓"]
    
    var body: some View {
        let columns = Array(repeating: GridItem(), count: 2)
        
        VStack{
            Text("常出現")
                .font(.system(size: 30))
            VStack {
                ScrollView(.horizontal){
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows){
                        ForEach(m.indices,id: \.self){
                            item in
                            mView(m: m[item])
                        }
                    }
                    
                    
                }
            }.fixedSize(horizontal: false, vertical: true)
            Spacer()
            Text("補充")
                .font(.system(size: 30))
            ScrollView(.vertical){
                LazyVGrid(columns: columns){
                    ForEach(s.indices,id: \.self){
                        item in
                        sView(s: s[item])
                        
                    }
                }
            }
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}

struct mView:View{
    let m:String
    var body: some View{
        VStack{
            ZStack{
                Image(m)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175,height: 175)
            }
            Text(m)
        }
    }
}

struct sView:View{
    let s:String
    var body: some View{
        VStack{
            ZStack{
                Image(s)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175,height: 175)
            }
            Text(s)
        }
    }
}
