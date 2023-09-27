//
//  subnetting.swift
//  SubnettingApp
//
//  Created by apple on 18/9/2023.
//

import Foundation

class subnetting{
    
    
}
 

func VLSM(decimalArray: [Int],prefix:Int,host1: Int, host2: Int, host3: Int, host4:Int) -> [Int]{
   var biOctet1 = String(decimalArray[0], radix: 2)
   var biOctet2 = String(decimalArray[1], radix: 2)
   var biOctet3 = String(decimalArray[2], radix: 2)
   var biOctet4 = String(decimalArray[3], radix: 2)
    
    let Octect1 = biOctet1.compactMap{ $0.wholeNumberValue }
    let Octect2 = biOctet2.compactMap{ $0.wholeNumberValue }
    let Octect3 = biOctet3.compactMap{ $0.wholeNumberValue }
    let Octect4 = biOctet3.compactMap{ $0.wholeNumberValue }
    var binaryArray = [Octect1,Octect2,Octect3,Octect4]
    var binaryArray1D = binaryArray.flatMap { $0 }
    
    var jumpNumber1 = JumpNumber(host: host1)
    var jumpNumber2 = JumpNumber(host: host2)
    var jumpNumber3 = JumpNumber(host: host3)
    var jumpNumber4 = JumpNumber(host: host4)
 
    if(host1<host2 || host2<host3 || host3<host4){
     print("Please sort hosts from largest to smallest")
    }else{
        
 
        
        
}
    
func subnettingMask(prefix: Int){
    var subnetMask = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
    for index in (0..<32){
        if index > prefix{
            subnetMask[index] = 0
        }
        
    }
        
    }
    return oneDimensionalArray

               
    }
 
//func JumpNumber(host: Int)-> Int{
//    var jumpNumber: Int
//    var Pow = Pow(x: 2,y: host)
//    for index in (1..<32){
//        if (Pow-host)>0{
//            jumpNumber = index
//        }
//        break;
//    }
//    return jumpNumber
//}
//func HostAdd(networkAdd:[Int], jumpNumber: Int) -> [Int]{
//    var newArray = networkAdd
//  
//    for index in (32-jumpNumber..<32){
//    newArray[index] = 0
//    }
//     return newArray
//}

func maxIPv4F(hostAdd: [[Int]],prefix:Int,jumpNumber1: Int,jumpNumber2: Int,jumpNumber3: Int,jumpNumber4: Int) -> [[Int]] {
    var tempHostAdd = hostAdd
    var tempHostAdd1D = tempHostAdd.flatMap { $0 }
    var maxIp2D = [[Int]]().self
    var result = [[Int]]().self
    // creating host address
    for index in (0..<32){
        if index > prefix{
            tempHostAdd1D[index] = 0
        }
        
        // find the max IP for host1
        for index in (0..<32){
            
            if index>prefix && index<(32-jumpNumber1){
                tempHostAdd1D[index] = 1
            }
        }
        var  maxIpHost1 = tempHostAdd1D
        //Find the max IP for host 2
        for index in (0..<32){
            
            if index>(32-jumpNumber1) && index<(32-jumpNumber2){
                tempHostAdd1D[index] = 1
            }
        }
        var  maxIpHost2 = tempHostAdd1D
        //Find the max IP for host 3
        for index in (0..<32){
            
            if index>(32-jumpNumber2) && index<(32-jumpNumber3){
                tempHostAdd1D[index] = 1
            }
        }
        var  maxIpHost3 = tempHostAdd1D
        //Find the max IP for host 3
        for index in (0..<32){
            
            if index>(32-jumpNumber3) && index<(32-jumpNumber4){
                tempHostAdd1D[index] = 1
            }
        }
        var  maxIpHost4 = tempHostAdd1D
        
        result = [maxIpHost1,maxIpHost2,maxIpHost3,maxIpHost4]
        return result
        
    }
    
    
    func minIPv4F(hostAdd: [[Int]],prefix:Int,jumpNumber1: Int,jumpNumber2: Int,jumpNumber3: Int,jumpNumber4: Int) -> [[Int]] {
        var tempHostAdd = hostAdd
        var tempHostAdd1D = tempHostAdd.flatMap { $0 }
        var maxIp2D = [[Int]]().self
        var result = [[Int]]().self
        // creating host address
        for index in (0..<32){
            if index > prefix{
                tempHostAdd1D[index] = 0
            }
            
            // find the min IP for host1
            for index in (0..<32){
                
                if index>prefix && index<(32-jumpNumber1){
                    tempHostAdd1D[index] = 0
                }
            }
            var  minIpHost1 = tempHostAdd1D
            //Find the min IP for host 2
            for index in (0..<32){
                
                if index>(32-jumpNumber1) && index<(32-jumpNumber2){
                    tempHostAdd1D[index] = 0
                }
            }
            var  minIpHost2 = tempHostAdd1D
            //Find the min IP for host 3
            for index in (0..<32){
                
                if index>(32-jumpNumber2) && index<(32-jumpNumber3){
                    tempHostAdd1D[index] = 0
                }
            }
            var  minIpHost3 = tempHostAdd1D
            //Find the min IP for host 3
            for index in (0..<32){
                
                if index>(32-jumpNumber3) && index<(32-jumpNumber4){
                    tempHostAdd1D[index] = 0
                }
            }
            var  minIpHost4 = tempHostAdd1D
            
            result = [minIpHost1,minIpHost2,minIpHost3,minIpHost4]
            return result
            
        }
        
        
    }
}

    



//
//func Pow(x: Int,y:Int)->Int{
//    var result = x^y
//    return result
//}

