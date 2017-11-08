//
//  StatisticsViewController.swift
//  QuestionOfTheDay
//
//  Created by Kalluri,Lavanya on 11/7/17.
//

import UIKit

class StatisticsViewController: UIViewController {
    let statObj:Statistician = Statistician()
    
    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    
    @IBOutlet weak var opt1percentage: UILabel!
    @IBOutlet weak var opt2percentage: UILabel!
    @IBOutlet weak var opt3percentage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var answer:[Double] = statObj.findPercentage()
        
        questionLBL?.text = statObj.fetchQuestionOfTheDay().question
        option1?.text = statObj.fetchQuestionOfTheDay().answer0
        option2?.text = statObj.fetchQuestionOfTheDay().answer1
        option3?.text = statObj.fetchQuestionOfTheDay().answer2
        opt1percentage.text = String(format: "%.2f%%",answer[0])
        opt2percentage.text = String(format: "%.2f%%",answer[1])
        opt3percentage.text = String(format: "%.2f%%",answer[2])

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    
}
