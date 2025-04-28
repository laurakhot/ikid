//
//  ImageJokeController.swift
//  ikid
//
//  Created by Laura Khotemlyansky on 4/27/25.
//

import UIKit

class ImageJokeController: UIViewController {
    
    var frontImage = true
    
  
    @IBOutlet weak var imageView: UIImageView!
    
    let front = "drake_top"
    let back = "drake_bottom"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPressed(_ sender: UIButton) {
        let imageToShow = frontImage ? back : front
        UIView.transition(with: imageView, duration: 0.4, options: .transitionFlipFromRight, animations: {
            self.imageView.image = UIImage(named: imageToShow)
        }, completion: nil)
        
        frontImage = !frontImage

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
