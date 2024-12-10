//
//  SampleA_ViewController.swift
//  Sample_Framework_A
//
//  Created by ウルトラ深瀬 on 10/12/24.
//

import UIKit
@_implementationOnly import Sample_Framework_B

public final class SampleFrameworkA {
    public init() {}
    
    private var vc: SampleA_ViewController!
    
    public func presentSampleA_VC(on presentingVC: UIViewController) {
        print("FW_A presentSampleA_VC")
        let bundle = Bundle(for: SampleFrameworkA.self)
        vc = UIStoryboard(name: "SampleA_ViewController", bundle: bundle).instantiateInitialViewController()
        presentingVC.present(vc, animated: true)
    }
}

final class SampleA_ViewController: UIViewController {
    var imageDisplayView: ImageDisplayView!

    @IBOutlet weak var sampleFrameworkB_BaseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDisplayView = ImageDisplayView(frame: view.frame)
        sampleFrameworkB_BaseView.addSubview(imageDisplayView)
        sampleFrameworkB_BaseView.addConstraints(for: imageDisplayView)
    }
    
    @IBAction func updateImageButtonTapped(_ sender: Any) {
        updateImage()
    }
    
    private func updateImage() {
        imageDisplayView.updateImage()
    }
}
