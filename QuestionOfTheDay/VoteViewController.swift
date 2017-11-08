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
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    

}
