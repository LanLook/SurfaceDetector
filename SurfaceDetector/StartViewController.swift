//
//  StartViewController.swift
//  SurfaceDetector
//
//  Created by Илья Крышин on 08.06.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var cameraBtn: UIButton!
    
    @IBOutlet weak var lupaImage: UIImageView!
    
    let btnImage = UIImage(systemName: "camera")?.withTintColor(.white, renderingMode: .alwaysOriginal)
    
    var gradientLayer: CALayer?
    
    
    @IBAction func goToObjView(sender: UIButton) {
        performSegue(withIdentifier: "", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        cameraBtn.setImage(btnImage, for: .normal)
        cameraBtn.setTitle("", for: .normal)
        cameraBtn.contentVerticalAlignment = .fill
        cameraBtn.contentHorizontalAlignment = .fill
        //cameraBtn.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        lupaImage.image = UIImage(named: "unnamed.png")
        
        // Do any additional setup after loading the view.
        
        let gradient = AnimatedGradient(colors: [.init(startPoint: .darkGray, endPoint: .black), .init(startPoint: .black, endPoint: .darkGray)], duration: 5)
        gradient.startAnimation()
        gradientLayer = gradient
        view.layer.addSublayer(gradient)
    }
    
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        gradientLayer?.frame = view.frame
        gradientLayer?.zPosition = -1
        
    }
    
    
    

}
