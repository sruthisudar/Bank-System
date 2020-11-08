//
//  main.swift
//  BankSystem
//
//  Created by Sruthi Sudar on 2020-11-03.
//

import Foundation

var bankAcc = [Create_Acc]()

while(true)
{
  print("Select any one of the following actions \n1. Press 1 to create bank accounts for the client \n2. Press 2 to display current balance and info of all customers\n3. Press 3 to deposit money \n4. Press 4 to draw money \n5. Press 5 to transfer money to other customer accounts \n6. Press 6 to pay utility bills \n0. Press 0 to Exit ")
  let n = Int(readLine()!)!
    if(n>0)
    {
      if (n==1)
      {
        print("Please enter Client Name")
        let name = readLine()!
        print("Please enter Client Address")
        let address = readLine()!
        print("Select the type of bank account to open \nPress 1 to create Savings account \nPress 2 to create Checking account")
        let n = Int(readLine()!)!

        if(n==1)
        {
          print("Please enter the savings interest rate")
          let rate = Double(readLine()!)!
          print("Please enter the savings balance")
          let balance = Double(readLine()!)!
          bankAcc.append(Create_Acc(name: name, address: address, balance: balance, interest: rate))
        }

        else if(n==2)
        {
          print("Please enter the Checking balance")
          let balance = Double(readLine()!)!
           let rate = 0.0
          bankAcc.append(Create_Acc(name: name, address: address, balance: balance, interest: rate))
        }

        else
        {
          print("Please enter 1 or 2")
        }

        for ba in bankAcc
        {
          ba.print_details()
        }
      }


      if(n==2)
      {
        for ba in bankAcc
        {
          ba.print_details()
        }
      }

      if(n==3)
      {
        print("Please enter the client name to deposit")
        let nam = readLine()!
        print("Select the type of bank account to deposit \nPress 1 to Savings account \nPress 2 to Checking account")
        let n = Int(readLine()!)!
        print("Please enter the amount to deposit")
        let amt = Double(readLine()!)!

         var index:Int

          func getIndex() ->Int
        {
          for i in 0..<bankAcc.count
          {
            if bankAcc[i].name == nam
            {
              return i
            }
          }
          return -1
        }
        index = getIndex()
        if(index == -1)
        {
            print("Customer Name not found")
        }
        else
        {
          bankAcc[index].balance += amt
        }

        print("Balance has been updated \nPlease find the below details")

        for ba in bankAcc
        {
          ba.print_details()
        }
        
      }

      if(n==4)
      {
        print("Please enter the client name to draw money")
        let nam = readLine()!
        print("Select the type of bank account to draw money \nPress 1 to Savings account \nPress 2 to Checking account")
        let n = Int(readLine()!)!
        print("Please enter the amount to draw")
        let amt = Double(readLine()!)!

        var index:Int

          func getIndex() ->Int
        {
          for i in 0..<bankAcc.count
          {
            if bankAcc[i].name == nam
            {
              return i
            }
          }
          return -1
        }
        index = getIndex()
        if(index == -1)
        {
            print("Customer Name not found")
        }
        else
        {
          bankAcc[index].balance -= amt
        }

        print("Balance has been updated \nPlease find the below details")

        for ba in bankAcc
        {
          ba.print_details()
        }
       
      }

      if(n==5)
      {
        print("Please enter the client name from which we can transfer")
        let nam = readLine()!
        print("Select the type of bank account \nPress 1 to Savings account \nPress 2 to Checking account")
        let n = Int(readLine()!)!
        print("Please enter the amount to transfer")
        let amt = Double(readLine()!)!

        var index:Int

          func getIndex() ->Int
        {
          for i in 0..<bankAcc.count
          {
            if bankAcc[i].name == nam
            {
              return i
            }
          }
          return -1
        }
        index = getIndex()
        if(index == -1)
        {
            print("Customer Name not found")
        }
        else
        {
          bankAcc[index].balance -= amt
        }

        print("Please enter the client name to which transfer has to be done")
        let name = readLine()!
        print("Select the type of bank account \nPress 1 to Savings account \nPress 2 to Checking account")
        let n1 = Int(readLine()!)!

         var indx:Int

          func getIndx() ->Int
        {
          for i in 0..<bankAcc.count
          {
            if bankAcc[i].name == name
            {
              return i
            }
          }
          return -1
        }
        indx = getIndx()
        if(indx == -1)
        {
            print("Customer Name not found")
        }
        else
        {
          bankAcc[indx].balance += amt
        }

        print("The transaction is Successful and balance is updated \nPlease find the below details")

        for ba in bankAcc
        {
          ba.print_details()
        }
      }



      if(n==6)
      {
        print("Please enter the customer name")
        let nam = readLine()!
        print("Select the type of bank account \nPress 1 to Savings account \nPress 2 to Checking account")
        let n = Int(readLine()!)!
        print("Please enter the Utility Name")
        let uti = readLine()!
        print("Please enter the amount to pay for that Utility")
        let amt = Double(readLine()!)!

        var index:Int

          func getIndex() ->Int
        {
          for i in 0..<bankAcc.count
          {
            if bankAcc[i].name == nam
            {
              return i
            }
          }
          return -1
        }
        index = getIndex()
        if(index == -1)
        {
            print("Customer Name not found")
        }
        else
        {
          bankAcc[index].balance -= amt
        }

        print("Utility bill has been paid successfully and balance has been updated \nPlease find the below details")

        for ba in bankAcc
        {
          ba.print_details()
        }
      }


    
    }

    else
    {
    print("Exited")
    break
    }
}

