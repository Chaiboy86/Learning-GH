//
//  ContentView.swift
//  Quote
//
//  Created by 山里カズミ on 2021/09/28.
//

import SwiftUI

struct QuoteListView: View {
    
    // MARK: Create the target model which will be used in this view
    @ObservedObject var model = QuoteModel()
    // TODO: print(model)
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(model.quotes){ item in
                        ZStack {
                            NavigationLink(destination: QuoteDetailView(quote: item), label:{
                                Image(item.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 350, height: 350, alignment: .center)
                                    .clipped()
                                    .cornerRadius(10)
                            })
                            VStack(alignment: .leading){
                                Text(item.quote)
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.yellow)
                                Text("- " + item.author)
                                    .foregroundColor(Color.yellow)
                            }.frame(width: 300, height: 300, alignment: .leading)
                        }
                        .padding(.bottom, 10.0)
                    }
                }
            }
            .navigationTitle("Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
