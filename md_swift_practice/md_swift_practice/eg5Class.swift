//
//  eg5Class.swift
//  md_swift_practice
//
//  Created by Jesus Barraza on 26/09/24.
//

import SwiftUI

struct Ejercicio5: View {
	var body: some View {
		VStack {
			Button(
				action: {
					print("Button tapped")
				}
			){
				HStack{
					Image(systemName: "square.and.arrow.up")
						.font(.title)
					Text("Share")
						.fontWeight(.semibold)
						.font(.title)
				}
			}
			.buttonStyle(GradientButtonStyle())
			Button(
				action: {
					print("Button tapped")
				}
			){
				HStack{
					Image(systemName: "square.and.pencil")
						.font(.title)
					Text("Edit")
						.fontWeight(.semibold)
						.font(.title)
				}
			}
			.buttonStyle(GradientButtonStyle())
			Button(
				action: {
					print("Button tapped")
				}
			){
				HStack{
					Image(systemName: "trash")
						.font(.title)
					Text("Delete")
						.fontWeight(.semibold)
						.font(.title)
				}
			}
			.buttonStyle(GradientButtonStyle())
		}
		.padding()
	}
}

struct GradientButtonStyle : ButtonStyle {
	func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.frame(minWidth: 0, maxWidth: .infinity)
			.padding()
			.foregroundColor(.white)
			.background(
				LinearGradient(
					colors: [Color("PurpleLight"), Color("PurpleDark")],
					startPoint: UnitPoint.top,
					endPoint: UnitPoint.bottom
				)
			)
			.cornerRadius(30)
			.shadow(color: Color.gray, radius: 20.0, x: 20, y: 10)
			.scaleEffect(
				x: configuration.isPressed ? 0.9 : 1,
				y: configuration.isPressed ? 0.9 : 1
			)
	}
}

#Preview {
	Ejercicio5()
}
