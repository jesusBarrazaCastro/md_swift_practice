//
//  eg1class.swift
//  finance_tracker
//
//  Created by Jesus Barraza on 02/09/24.
//
//

import SwiftUI

struct Ejercicio1: View {
	@State private var toggle: Bool = false
	@State private var message: String = "Hola mundo !"
	
	var body: some View {
		NavigationView{
			VStack(alignment: .center, spacing: 15) {
				Text("Movil")
					.font(.system(size: 30))
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				Circle()
					.fill(toggle ? .blue : .red)
					.overlay(
						Image(systemName: "globe")
							.font(.system(size: 144))
							.foregroundColor(.white)
					)
				Text(toggle ? "Hola mundo" : "Jesus Barraza")
					.font(.system(size: 20))
				Button("Click me !"){
					toggle = !toggle
				}
				.buttonStyle(BorderedButtonStyle())
					.tint(.purple)
					.buttonBorderShape(.roundedRectangle(radius: 10))
					.foregroundColor(.purple)
					.padding()
			}
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
			.padding()
			.navigationBarBackButtonHidden(true)
		}
	}
}

#Preview {
	Ejercicio1()
}
