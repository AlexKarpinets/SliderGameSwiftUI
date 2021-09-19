//
//  Button.swift
//  SliderGameSwiftUI
//
//  Created by Karpinets Alexander on 18.09.2021.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Hello") {
        }
    }
}
