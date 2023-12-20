//
//  emojiViewController.swift
//  emojiSwitch
//
//  Created by yucian huang on 2023/12/19.
//

import UIKit

class emojiViewController: UIViewController {
    @IBOutlet weak var upperImageView: UIImageView!
    @IBOutlet weak var lowerImageView: UIImageView!
    @IBOutlet weak var MixImageView: UIImageView!
    
    @IBOutlet weak var upperNameLabel: UILabel!
    @IBOutlet weak var lowerNameLabel: UILabel!
    @IBOutlet weak var mixNameLabel: UILabel!
    
    
    let upperImages = ["cat1", "star1", "duh1"]
    let lowerImages = ["cat1", "star1", "duh1"]
    let mixImages = ["??", "cat2", "star2", "duh2", "catStar", "duhStar", "duhCat"]
    
    // LabelName & Label will be connected.
    
    let imagesNames = ["CAR", "STAR", "DUH"]
    let mixNames = ["?", "CARS", "STARS", "DUHHH", "SHINNYCAR", "DUH SHINE", "CARDUH"]
    
    var upperImageIndex = 0
    var lowerImageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do additional setup after loading the view.
    }
    
    // SET gESTURE
    
    @IBAction func upperImageSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        if sender.direction == .left {
            upperImageIndex = (upperImageIndex - 1 + upperImages.count) % upperImages.count
        } else  {
            
            upperImageIndex = (upperImageIndex + 1) % upperImages.count
            
        }
        
        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
        upperNameLabel.text = imagesNames[upperImageIndex]
    }
    
    //set arrow button
    
    @IBAction func leftArrowButton(_ sender: UIButton) {
        upperImageIndex = (upperImageIndex - 1 + upperImages.count) % upperImages.count
        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
        upperNameLabel.text = imagesNames[upperImageIndex]
        mixImagesForUpperAndLower()
    }
    
    @IBAction func rightArrowButton(_ sender: Any) {
        upperImageIndex = (upperImageIndex + 1) % upperImages.count
        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
        upperNameLabel.text = imagesNames[upperImageIndex]
        mixImagesForUpperAndLower()
    }
    
    @IBAction func buttomLeftArrowutton(_ sender: UIButton) {
        lowerImageIndex = (lowerImageIndex - 1 + lowerImages.count) % lowerImages.count
        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
        lowerNameLabel.text = lowerImages[lowerImageIndex]
        mixImagesForUpperAndLower()
    }
    @IBAction func buttomRightArrowButton(_ sender: UIButton) {
        lowerImageIndex = (lowerImageIndex + 1) % lowerImages.count
        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
        lowerNameLabel.text = imagesNames[lowerImageIndex]
        mixImagesForUpperAndLower()
    }
    
    //set random button
    
    @IBAction func upperRandomButton(_ sender: UIButton) {
        upperImageIndex = Int.random(in: 0...upperImages.count - 1)
        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
        upperNameLabel.text = imagesNames[upperImageIndex]
        
        mixImagesForUpperAndLower()
        
        // want the result automatically showed
    }
    
    @IBAction func lowerRandomButton(_ sender: UIButton) {
        
        lowerImageIndex = Int.random(in: 0...lowerImages.count - 1)
        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
        lowerNameLabel.text = imagesNames[lowerImageIndex]
        
        mixImagesForUpperAndLower()
    }
    
    
    @IBAction func goButton(_ sender: UIButton) {
        
        mixImagesForUpperAndLower()
    }
    
    
    
    @IBAction func lowerImageSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        if sender.direction == .left {
            lowerImageIndex = (lowerImageIndex - 1 + lowerImages.count) % lowerImages.count
        } else {
            lowerImageIndex = (lowerImageIndex + 1) % lowerImages.count
        }
        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
        lowerNameLabel.text = imagesNames[lowerImageIndex]
        
    }
    // set a function if else
    
    func mixImagesForUpperAndLower() {
        
        // car
        if upperImageIndex == 0, lowerImageIndex == 0 {
            MixImageView.image = UIImage(named: mixImages[1])
            mixNameLabel.text = mixNames[1]
            
        } else if upperImageIndex == 0, lowerImageIndex == 1 {
            
            MixImageView.image = UIImage(named: mixImages[4])
            mixNameLabel.text = mixNames[4]
        } else if upperImageIndex == 0, lowerImageIndex == 2 {
            MixImageView.image = UIImage(named: mixImages[6])
            mixNameLabel.text = mixNames[6]
        }
        //star
        
        if upperImageIndex == 1, lowerImageIndex == 0 {
            MixImageView.image = UIImage(named: mixImages[4])
            mixNameLabel.text = mixNames[4]
            
        } else if upperImageIndex == 1, lowerImageIndex == 1 {
            MixImageView.image = UIImage(named: mixImages[2])
            mixNameLabel.text = mixNames[2]
        } else if upperImageIndex == 1, lowerImageIndex == 2 {
            MixImageView.image = UIImage(named: mixImages[5])
            mixNameLabel.text = mixNames[5]
        }
        //duh
        if upperImageIndex == 2, lowerImageIndex == 2 {
            MixImageView.image = UIImage(named: mixImages[3])
            mixNameLabel.text = mixNames[3]
        } else if upperImageIndex == 2, lowerImageIndex == 1 {
            MixImageView.image = UIImage(named: mixImages[5])
            mixNameLabel.text = mixNames[5]
        } else if upperImageIndex == 2, lowerImageIndex == 0 {
            MixImageView.image = UIImage(named: mixImages[6])
            mixNameLabel.text = mixNames[6]
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
    
}
