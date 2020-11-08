//
//  Account.swift
//  BankSystem
//
//  Created by Sruthi Sudar on 2020-11-03.
//

import Foundation


class Create_Acc{
    var name:String
    var address:String
    var balance:Double
    var interest:Double

    init(name:String, address:String, balance:Double, interest:Double){
        self.name = name
        self.address = address
        self.balance = balance
        self.interest = interest
    }

    func print_details()
    {
    print("name:\(self.name)\t address:\(self.address)\t balance:\(self.balance)\t interest:\(self.interest)\t")
    }
}

