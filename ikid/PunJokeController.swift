//
//  PunJokeController.swift
//  ikid
//
//  Created by Laura Khotemlyansky on 4/27/25.
//

import UIKit

class PunJokeController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
   
    var showingQuestion = true
    let question = "I used to play piano by ear"
    let punchline = "But now I play with my hands"
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    override func viewWillAppear(_ animated: Bool) {
        showingQuestion = true
        jokeLabel.text = question
    }
    
    @IBAction func nextPress(_sender: UIButton) {
        let toText = showingQuestion ? punchline : question
        
        UIView.transition(with: jokeLabel, duration: 0.4, options: .transitionFlipFromRight, animations: {
            self.jokeLabel.text = toText
        }, completion: nil)
        
        showingQuestion = !showingQuestion
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
