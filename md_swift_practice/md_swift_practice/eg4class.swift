//
//  eg4class.swift
//  finance_tracker
//
//  Created by Jesus Barraza on 05/09/24.
//

import SwiftUI

struct Ejercicio4: View {
	
    var body: some View {
			HStack{
				Text("Instagram")
				Spacer()
			}
			ScrollView {
				Post(
					account: "Star Wars",
					date: " 1d ago",
					image: "star-wars-the-clone-wars-darth-vader-5k-2560x1600",
					likes: "200,000 likes",
					description: "Darth vader - The clone wars"
				)
				Post(
					account: "Star Wars",
					date: " 2d ago",
					image:  "wp3614448-star-wars-4k-wallpapers",
					likes: "200,000, likes",
					description: "A new hope"
				)
				Post(
					account: "Star Wars",
					date: " 3d ago",
					image: "mando",
					likes: "1,000,000 likes",
					description: "The mandalorian"
				)
				Post(
					account: "Star Wars",
					date: " 3d ago",
					image: "grogu",
					likes: "1,000,000 likes",
					description: "Father & Son"
				)
			}
    }
}

#Preview {
    Ejercicio4()
}

struct Post: View {
	var account: String
	var date: String
	var image: String
	var likes: String
	var description: String
	var body: some View {
		VStack(alignment: .center, spacing: 10) {
			HStack{
				Image(systemName: "person.circle.fill")
					.font(.system(size: 20))
				Text(account)
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				Image(systemName: "checkmark.seal.fill")
					.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
				Text(date)
					.foregroundColor(.gray)
				Spacer()
			}
			Image(image)
				.resizable()
				.aspectRatio(contentMode: .fit)
			HStack{
				Image(systemName: "heart")
				Image(systemName: "message")
				Image(systemName: "paperplane")
				Spacer()
				Image(systemName: "bookmark")
			}
			HStack(alignment: .top, spacing: 10){
				Text(likes)
					.foregroundColor(.gray)
				Spacer()
			}
			HStack(alignment: .top, spacing: 10){
				Text(account)
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				Image(systemName: "checkmark.seal.fill")
					.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
				Text(description)
				Spacer()
			}
		}
		.padding(10)
	}
}
