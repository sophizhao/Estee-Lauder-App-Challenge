//
//  ProcessViewController.swift
//  Estee Lauder Challenge
//
//  Created by Sophia on 6/16/22.
//

import UIKit

class ProcessViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var benefitsLabel: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBAction func segmentChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
            titleLabel.text  = "One Dropper"
                benefitsLabel.text = "8-hour anti-oxidant power, 72-hour hydration and plumped skin, stronger skin barrier in just 4 hours, and oil-free skin texture."
                image1.isHidden = false
            case 1:
            titleLabel.text = "One Bottle"
                benefitsLabel.text = "Skin feels firmer, looks healthy, and has a new bounce and vitality. Over time, pores look diminished."
            
                image1.isHidden = true
                image2.isHidden = false
            default:
                break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.isHidden = false
        image2.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
