//
//  ViewController.swift
//  LinarcTask
//
//  Created by Manikandan on 26/04/20.
//  Copyright © 2020 Manikandan. All rights reserved.
//

import UIKit

class MatrixManipulation: UIViewController {
    
    
    var max : Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let a : [[Int]] = [[ 1, 2, 3 ],
                            [ 4, 5, 6 ],
                            [ 7, 8, 9  ]];
        self.mountainCount(inputData: a, n: 3)
    }
    
    func mountainCount(inputData : [[Int]], n : Int ) -> Int{
        
        var tempMatrix : [[Int]] = [[n + 2]]
        
        var count : Int = 0
                
        for i in (0..<n + 2) {
            for j in (0..<n + 2) {
                
                if ((i == 0) || (j == 0) ||
                    (i == n + 1) || (j == n + 1)){
                    tempMatrix = [[Int.min]]
                  
                }else{
                    tempMatrix = [inputData[j - 1],[i - 1]]
                   
                }
            }
        }
        
        for i in (1..<n) {
            for j in (1..<n) {
//                if (([tempMatrix[i], [j]] > [tempMatrix[i - 1] ,[j]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i + 1] ,[j]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i],[j - 1]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i], [j + 1]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i - 1],[j - 1]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i + 1],[j + 1]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i - 1],[j + 1]])
//                    && ([tempMatrix[i], [j]] > [tempMatrix[i + 1],[j - 1]])) {
//                    count += 1;
//                }
            }
        }
        return count
    }
}

