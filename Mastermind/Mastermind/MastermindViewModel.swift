//
//  MastermindViewModel.swift
//  Mastermind
//
//  Created by Alumne on 25/3/22.
//

import Foundation

class MastermindViewModel {
     public private(set) var board = [Combination]()
     private var secret:  [Color]
     init(_ secret: [Color]? = nil){
        board = []
         self.secret = []
         self.secret = secret ?? self.secret
         var col = 0
         if(self.secret == []){
             for _ in 1...4{
                 
                 col = Int.random(in: 1...4)
                 switch col{
                 case 1:
                     self.secret.append(.red)
                 case 2:
                     self.secret.append(.yellow)
                 case 3:
                     self.secret.append(.blue)
                 case 4:
                     self.secret.append(.green)
                 default:
                     return
                 }
             }
         }
         
         return
     }
     func check(_ combination: [Color]) -> Combination {
         var result = [Result]()
         var tmpCombination: [Color?] = combination.map {$0}
         for (index, color) in self.secret.enumerated(){
             guard color != tmpCombination[index] else{
                 result.append(.rightPlace)
                 tmpCombination[index] = nil
                 continue
             }
             guard let colorIndex = tmpCombination.firstIndex(of: color) else {
                 continue
             }
             result.append(.exists)
             tmpCombination[colorIndex] = nil
         }
        return Combination (comb: combination, results: result)
    }
}
