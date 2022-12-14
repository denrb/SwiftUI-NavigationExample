//
//  DetailsView.swift
//  NavigationExample
//
//  Created by Denis Rybkin on 2022-11-24.
//

import SwiftUI

struct DetailsView: View {
    
    let details: String
    
    private let detailsText = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
"""
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(details)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .cornerRadius(8)
            Text("Details title")
                .font(.title)
            Spacer()
                .frame(height: 10)
            Text(detailsText)
                .font(.callout)
            Spacer()
        }
            .padding()
            .navigationBarTitle("Details", displayMode: .inline)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(details: "picture1")
    }
}
