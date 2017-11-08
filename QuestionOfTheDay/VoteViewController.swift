//
//  VoteViewController.swift
//  QuestionOfTheDay
//
//  Created by Kalluri,Lavanya on 11/7/17.
//

import UIKit

class VoteViewController: UIViewController {

    var QuestionOfTheDay:QuestionOfTheDay!
    let statObj:Statistician = Statistician()
    
    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var option1LBL: UILabel!
    @IBOutlet weak var option2LBL: UILabel!
    @IBOutlet weak var option3LBL: UILabel!
    
    
    @IBAction func selectedOption1(_ sender: Any) {
        statObj.saveOpinion(opinion: Opinion(answer: 0))
    }
    
    @IBAction func selectedOption2(_ sender: Any) {
        statObj.saveOpinion(opinion: Opinion(answer: 1))
    }
    
    @IBAction func selectedOption3(_ sender: Any) {
        statObj.saveOpinion(opinion: Opinion(answer: 2))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        QuestionOfTheDay = statObj.fetchQuestionOfTheDay()
        questionLBL?.text = statObj.fetchQuestionOfTheDay().question
        option1LBL?.text = statObj.fetchQuestionOfTheDay().answer0
        option2LBL?.text = statObj.fetchQuestionOfTheDay().answer1
        option3LBL?.text = statObj.fetchQuestionOfTheDay().answer2
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
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
