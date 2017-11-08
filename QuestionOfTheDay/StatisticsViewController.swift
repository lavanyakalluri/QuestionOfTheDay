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
