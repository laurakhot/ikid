//
//  KnockJokeController.swift
//  ikid
//
//  Created by Laura Khotemlyansky on 4/27/25.
//

import UIKit

class KnockJokeController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
   
    var currJoke = 0
    let joke = [
        "Knock knock!",
        "Who's there?",
        "Deja",
        "Deja who?",
        "Knock knock..."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    override func viewWillAppear(_ animated: Bool) {
        currJoke = 0
        jokeLabel.text = joke[0]
    }
    
    @IBAction func nextPress(_sender: UIButton) {
        
        self.currJoke = (self.currJoke + 1) % self.joke.count
        
        UIView.transition(with: jokeLabel, duration: 0.4, options: .transitionFlipFromRight, animations: {
                       self.jokeLabel.text = self.joke[self.currJoke]
                   }, completion: nil)
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
