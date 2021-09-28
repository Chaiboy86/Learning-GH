//
//  DataService.swift
//  Quote
//
//  Created by 山里カズミ on 2021/09/28.
//

import Foundation

class DataService {
    
    // Create a function which returns data type "Quote" in an array
    // Set static so that this method can be called without creating a "DataService" instance
    static func getLocalData() -> [Quote]{
        
        // MARK: Get path name of the target json file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        // TODO: print(pathString)
        
        // MARK: Check if the variable is nil or not
        guard pathString != nil else {
            
            // If the variable is nil, return an empty Quote instance
            return [Quote]()
        }
        
        // MARK: Create a url object
        // Unwrap pathString with "!", since we can assure it does not contain nil
        let url = URL(fileURLWithPath: pathString!)
        // TODO: print(url)
        
        
        do{
            
            // MARK: Create a data Object
            // Since there is a potential error thrown, when using Data(), set "try" infront of it and wrap with a "do"
            let data = try Data(contentsOf: url)
            // TODO: print(data)
            
            // MARK: Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            // TODO: print(decoder)
            
            do{
                
                // MARK: Decode the data by passing the data object via the JSON decoder
                // Since there is a potential error thrown, when using decode(), set "try" infront of it and wrap with a "do"
                let quoteData = try decoder.decode([Quote].self, from: data)

                
                // MARK: Loop each data and assign a unique ID
                for q in quoteData{
                    
                    q.id = UUID()
                    
                }
                
                // MARK: Return the quoteData which contains actual data
                return quoteData
                
            }
            catch{
                
                print(error)
                
            }
            
        }
        catch{
            
            print(error)
            
        }
        
        // MARK: Return an empty data in case no data is acquired
        return [Quote]()
        
    }
}
