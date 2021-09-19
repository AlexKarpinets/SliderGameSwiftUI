//
//  ViewController.swift
//  SliderTemp
//
//  Created by Karpinets Alexander on 18.09.2021.
//

import SwiftUI

class SliderViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSlider()
     
    }

    @IBAction func slider(_ sender: UISlider!) {
      
    }
    
    private func setSlider() {
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
}
}

struct SliderViewControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> SliderViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: "SliderViewController") as! SliderViewController
    }
    
    func updateUIViewController(_ uiViewController: SliderViewController, context: Context) {
    }
}

struct ViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        SliderViewControllerRepresentable()
    }
}
