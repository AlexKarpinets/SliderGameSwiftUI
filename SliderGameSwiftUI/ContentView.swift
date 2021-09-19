//
//  ContentView.swift
//  SliderGameSwiftUI
//
//  Created by Karpinets Alexander on 18.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var targetValue = Int.random(in: 1...100)
    @State private var currentValue = 0
    @State private var showAlert: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            
            HStack {
                Text("0")
                    .padding()
                SliderViewControllerRepresentable().frame(
                    height: 100)
                Text("100")
                    .padding()
            }
            
            VStack {
                CustomButton(title: "Проверь меня!") {
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert) {
                  Alert(title: Text("Your Score"))
                }
                .padding()
                }
                CustomButton(title: "Начать заново") {
                    getNewGame()
                }
            }
        }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
    
    private func getNewGame() {
       targetValue = Int.random(in: 1...100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
