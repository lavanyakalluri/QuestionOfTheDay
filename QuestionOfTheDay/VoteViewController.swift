//
//  VoteViewController.swift
//  QuestionOfTheDay
//
//  Created by Kalluri,Lavanya on 11/7/17.
//

import UIKit

class VoteViewController: UIViewController {

    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var option1LBL: UILabel!
    @IBOutlet weak var option2LBL: UILabel!
    @IBOutlet weak var option3LBL: UILabel!
    
    
    @IBAction func selectedOption1(_ sender: Any) {
    }
    
    @IBAction func selectedOption2(_ sender: Any) {
    }
    
    @IBAction func selectedOption3(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
