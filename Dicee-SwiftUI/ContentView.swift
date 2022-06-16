//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Oğuz Karatoruk on 16.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(n: self.leftDiceNumber)
                    DiceeView(n: self.rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    AppButton(title: "Roll")
                }
            }
        }
    }
}

struct DiceeView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct AppButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.system(size: 50))
            .foregroundColor(.white)
            .padding(.horizontal)
            .background(Color.red)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


