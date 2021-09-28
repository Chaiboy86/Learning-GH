//
//  QuoteDetailView.swift
//  Quote
//
//  Created by 山里カズミ on 2021/09/28.
//

import SwiftUI

struct QuoteDetailView: View {

    var quote:Quote

    var body: some View {
        
        ScrollView{
            VStack{
                Text(quote.quote)
            }
        }
        .navigationBarTitle(quote.author)
        
    }
}

struct QuoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()

        QuoteDetailView(quote: model.quotes[0])
    }
}
