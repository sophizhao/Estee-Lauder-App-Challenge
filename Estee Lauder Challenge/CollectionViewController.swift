//
//  CollectionViewController.swift
//  Estee Lauder Challenge
//
//  Created by Sophia on 6/16/22.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collection: UIImageView!
    @IBOutlet weak var moisturizer: UIImageView!
    @IBOutlet weak var foundation: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var benefitsLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func segmentChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
            titleLabel.text  = "The Advanced Night Repair Collection"
                benefitsLabel.text = "The Advanced Night Repair Collection features multiple products to bring out your skin's glow through de-aging and nourishment."
                collection.isHidden = false
                moisturizer.isHidden = true
                foundation.isHidden = true
            case 1:
            titleLabel.text = "Revitalizing Supreme+ Moisturizer"
                benefitsLabel.text = "The moisturizer of dreams— featuring nature-inspired ingredients for lift, strength, and indulgence."
            
                collection.isHidden = true
                moisturizer.isHidden = false
                foundation.isHidden = true
            case 2:
            titleLabel.text = "Double Wear Stay-in-Place Foundation"
                benefitsLabel.text = "With over 55 shades, Double Wear Foundation brings lifeproof, 24-hour wear in an oil-free formula."
            
                collection.isHidden = true
                moisturizer.isHidden = true
                foundation.isHidden = false
            default:
                break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.isHidden = false
        moisturizer.isHidden = true
        foundation.isHidden = true

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
