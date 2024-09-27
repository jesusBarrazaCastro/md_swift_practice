//
//  eg2class.swift
//  finance_tracker
//
//  Created by Jesus Barraza on 03/09/24.
//
import SwiftUI

struct Ejercicio2: View {
	
	
	var body: some View {
		NavigationView{
			VStack(alignment: .center, spacing: 10) {
				HStack{
					Image(systemName: "person.circle.fill")
						.font(.system(size: 20))
					Text("Star Wars")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
					Image(systemName: "checkmark.seal.fill")
						.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
					Text(" 2d ago")
						.foregroundColor(.gray)
					Spacer()
				}
				Image("star-wars-the-clone-wars-darth-vader-5k-2560x1600")
					.resizable()
					.scaledToFit()
					.overlay(
						Color.black
							.opacity(0.2)
							.overlay(
								Text("10 million views")
									.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
									.foregroundColor(.white)
							)
					)
				HStack{
					Image(systemName: "heart")
					Image(systemName: "message")
					Image(systemName: "paperplane")
					Spacer()
					Image(systemName: "bookmark")
				}
				HStack(alignment: .top, spacing: 10){
					Text("1,534,239 likes")
						.foregroundColor(.gray)
					Spacer()
				}
				HStack(alignment: .top, spacing: 10){
					Text("Star Wars")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
					Image(systemName: "checkmark.seal.fill")
						.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
					Text("Darth vader - The clone wars")
					Spacer()
				}
			}
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
			.padding()
			.navigationBarBackButtonHidden(true)
		}
	}
}

#Preview {
	Ejercicio2()
}
