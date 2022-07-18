//
//  Home.swift
//  tikTok
//
//  Created by 大和田一裕 on 2022/07/18.
//

import SwiftUI
import AVKit

struct Home: View {
    
    @State var index = 0
    @State var top = 0
    @State var data = [
        Video(id: 0, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video4", ofType: "mp4")!)), replay: true),
        Video(id: 1, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video5", ofType: "mp4")!)), replay: true),
        Video(id: 2, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video2", ofType: "mp4")!)), replay: true),
        Video(id: 3, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video3", ofType: "mp4")!)), replay: true),
        Video(id: 4, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video1", ofType: "mp4")!)), replay: true),
        Video(id: 5, player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "video6", ofType: "mp4")!)), replay: true),
    ]
    
    
    var body: some View {
        ZStack {
            
            PlayerScrollView(data: $data)
            
            //PlayerView(data: $data)
            
            VStack{
                //top menu
                HStack(spacing: 15) {
                    Button {
                        self.top = 0
                    } label: {
                        Text("フォロー中")
                            .foregroundColor(self.top == 0 ? .white : Color.white.opacity(0.45))
                            .fontWeight(self.top == 0 ? .bold : .none)
                            .padding(.vertical)
                    }
                    
                    Button {
                        self.top = 1
                    } label: {
                        Text("おすすめ")
                            .foregroundColor(self.top == 1 ? .white : Color.white.opacity(0.45))
                            .fontWeight(self.top == 1 ? .bold : .none)
                            .padding(.vertical)
                    }


                }
                
                Spacer()
                //right menu
                HStack{
                    Spacer()
                    VStack(spacing: 35){
                        
                        Button(action: {
                            
                        }, label: {
                            Image("top")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            VStack {
                                Image(systemName: "suit.heart.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("400K")
                                    .foregroundColor(.white)
                            }
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            VStack(spacing: 8) {
                                Image(systemName: "message.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("1542")
                                    .foregroundColor(.white)
                            }
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("共有")
                                    .foregroundColor(.white)
                            }
                        })
                    }
                    .padding(.bottom, 55)
                    .padding(.trailing)
                }
                //bottom menu
                HStack(spacing: 0){
                    Button(action: {
                        self.index = 0
                    }, label: {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 0 ? .white: Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        self.index = 1
                    }, label: {
                        Image(systemName: "person.2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 1 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }, label: {
                        Image("upload")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        self.index = 2
                    }, label: {
                        Image(systemName: "ellipsis.bubble")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 2 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        self.index = 3
                    }, label: {
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .foregroundColor(self.index == 3 ? .white : Color.white.opacity(0.35))
                            .padding(.horizontal)
                    })
                    
                }
                .padding(.horizontal)
            }
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
