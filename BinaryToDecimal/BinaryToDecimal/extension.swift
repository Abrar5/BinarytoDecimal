//
//  extension.swift
//  BinaryToDecimal
//
//  Created by user on 23/02/1442 AH.
//

import Foundation

extension String
{
func switchTrigger (using: String, at: Int) -> String
{
    
    var binaryNum1 = String()
    
    for (index, char) in binaryNum1.enumerated() {
        
        binaryNum1 += String((index == at) ? using : String(char))
        
    }
    
    
    return binaryNum1
}
}
