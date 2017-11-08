//
//  Statistics.swift
//  QuestionOfTheDay
//
//  Created by Kalluri,Lavanya on 11/7/17.
//

import Foundation

class Statistician: NSObject {
    
    let APPLICATION_ID = "2765D8DC-09D9-F565-FF5B-424B4066E600"
    let API_KEY = "8F62A9C6-A50F-66FF-FFE2-B9C1D0F06D00"
    let SERVER_URL = "https://api.backendless.com"
    let backendless = Backendless.sharedInstance()!
    var dataStoreQuestionOfTheDay: IDataStore!
    var dataStoreOpinion: IDataStore!
    
    func findPercentage() -> [Double] {
        let Allopinion:[Opinion] = GetAllOpinions()
        var answer0:Double = 0.0
        var answer1:Double = 0.0
        var answer2:Double = 0.0
        var PercentOfOpinion:[Double] = []
        for dar in Allopinion{
            if dar.answer == 0{
                answer0 = answer0 + 1 }
            
            if dar.answer == 1{
                answer1 = answer1 + 1 }
            
            if dar.answer == 2{
                answer2 = answer2 + 1 }
            
        }
        PercentOfOpinion.append(Double(answer0/Double(Allopinion.count))*100.0)
        PercentOfOpinion.append(Double(answer1/Double(Allopinion.count))*100.0)
        PercentOfOpinion.append(Double(answer2/Double(Allopinion.count))*100.0)
        return PercentOfOpinion
    }
    
    
    
    func saveOpinion(Opinion: Opinion) {
        dataStoreOpinion = backendless.data.of(Opinion.ofClass())
        _ = dataStoreOpinion?.save(Opinion) as! Opinion
        
    }
    
    func  fetchQuestionOfTheDay() ->QuestionOfTheDay {
        dataStoreQuestionOfTheDay = backendless.data.of(QuestionOfTheDay.ofClass())
        let DatabaseQuestion = dataStoreQuestionOfTheDay.find(byId: "DC4FC7B7-6F96-AD11-FF89-EE842087A500") as! QuestionOfTheDay
        return DatabaseQuestion    }
    
    
    func GetAllOpinions() ->[Opinion]{
        dataStoreOpinion = backendless.data.of(Opinion.ofClass())
        let noOfOpinionsToPull = dataStoreOpinion?.getObjectCount() as! Int
        let pageSize = 10
        let queryBuilder = DataQueryBuilder()
        var noOfOpinionPulled = 0
        var EveryOpinion:[Opinion] = []
        queryBuilder!.setPageSize(Int32(pageSize)).setOffset(0)
        
        while noOfOpinionPulled < noOfOpinionsToPull {
            let Opinion = self.dataStoreOpinion?.find(queryBuilder) as! [Opinion]
            EveryOpinion += Opinion
            noOfOpinionPulled += Opinion.count
            queryBuilder!.prepareNextPage()
        }
        return EveryOpinion
    }
    
    override init(){
        backendless.hostURL = SERVER_URL
        backendless.initApp(APPLICATION_ID, apiKey: API_KEY)
    }
}