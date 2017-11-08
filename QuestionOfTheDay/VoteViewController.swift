//
//  VoteViewController.swift
//  QuestionOfTheDay
//
//  Created by Kalluri,Lavanya on 11/7/17.
//

import UIKit

class VoteViewController: UIViewController {

    var QuestionOfTheDay:QuestionOfTheDay!
    let stat:Statistician = Statistician()
    
    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var option1LBL: UILabel!
    @IBOutlet weak var option2LBL: UILabel!
    @IBOutlet weak var option3LBL: UILabel!
    
    
    @IBAction func selectedOption1(_ sender: Any) {
        stat.saveOpinion(Opinion: Opinion(answer: 0))
    }
    
    @IBAction func selectedOption2(_ sender: Any) {
        stat.saveOpinion(Opinion: Opinion(answer: 1))
    }
    
    @IBAction func selectedOption3(_ sender: Any) {
        stat.saveOpinion(Opinion: Opinion(answer: 2))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLBL?.text = stat.fetchQuestionOfTheDay().question
        option1LBL?.text = stat.fetchQuestionOfTheDay().answer0
        option2LBL?.text = stat.fetchQuestionOfTheDay().answer1
        option3LBL?.text = stat.fetchQuestionOfTheDay().answer2
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        QuestionOfTheDay = stat.fetchQuestionOfTheDay()
        questionLBL?.text = stat.fetchQuestionOfTheDay().question
        option1LBL?.text = stat.fetchQuestionOfTheDay().answer0
        option2LBL?.text = stat.fetchQuestionOfTheDay().answer1
        option3LBL?.text = stat.fetchQuestionOfTheDay().answer2
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
