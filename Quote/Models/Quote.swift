//
//  Quote.swift
//  Quote
//
//  Created by 山里カズミ on 2021/09/28.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID?
    var quote:String
    var author:String
    var image:String

}
