//
//  DadJokeController.swift
//  ikid
//
//  Created by Laura Khotemlyansky on 4/27/25.
//

import UIKit

class DadJokeController: UIViewController {
    
    var showingQuestion = true
    @IBOutlet weak var jokeLabel: UILabel!
    let question = "I used to be addicted to soap"
    let punchline = "But now I'm clean"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showingQuestion = true
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
