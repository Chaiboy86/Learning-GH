//
//  QuoteModel.swift
//  Quote
//
//  Created by 山里カズミ on 2021/09/28.
//

import Foundation

// Set this protocol so that view can dynamically change when data changes in this model
class QuoteModel: ObservableObject{

    // Publish this variable so that it can dynamically change in view
    @Published var quotes = [Quote]()
    
    init(){
        
        self.quotes = DataService.getLocalData()
        
    }
    
}
