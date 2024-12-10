//
//  SampleA_ViewController.swift
//  Sample_Framework_A
//
//  Created by ウルトラ深瀬 on 10/12/24.
//

import UIKit

public final class SampleFrameworkA {
    public init() {}
    
    public func presentSampleA_VC(on presentingVC: UIViewController) {
        print("FW_A presentSampleA_VC")
        let vc = UIStoryboard(name: "SampleA_ViewController", bundle: .).instantiateInitialViewController() as! SampleA_ViewController
        presentingVC.present(vc, animated: true)
    }
}

final class SampleA_ViewController: UIViewController {

    @IBOutlet weak var sampleFrameworkB_BaseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
