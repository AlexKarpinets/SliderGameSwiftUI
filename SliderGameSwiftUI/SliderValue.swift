//
//  SliderValue.swift
//  SliderGameSwiftUI
//
//  Created by Karpinets Alexander on 19.09.2021.
//

import SwiftUI

struct SliderValue: UIViewRepresentable {
    
    @Binding var currentValue: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        slider.thumbTintColor = .red
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.didChangeValueSlider(_:)),
            for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

extension SliderValue {
    class Coordinator: NSObject {
        @Binding var currentValue: Double
        
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func didChangeValueSlider(_ sender: UISlider) {
            currentValue = Double(sender.value )
        }
    }
    
    struct SliderValue_Previews: PreviewProvider {
        static var previews: some View {
            SliderValue(currentValue: .constant(30))
        }
    }
}
