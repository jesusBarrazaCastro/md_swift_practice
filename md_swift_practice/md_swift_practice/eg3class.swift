
import SwiftUI

struct Ejercicio3: View {
	
	
	var body: some View {
		NavigationView{
			VStack(alignment: .leading, spacing: 10) {
				Title()
				Spacer()
				HStack {
					Plan(
						titulo: "BASIC",
						precio: "$10",
						textColor: .white,
						bgColor: .purple,
						icon: "pencil.tip.crop.circle"
					)
					ZStack {
						Plan(
							titulo: "PRO",
							precio: "$20",
							textColor: .white,
							bgColor: .blue,
							icon: "globe"
						)
						Text("Best for designers")
							//.font(system(.caption, design: .rounded))
							.fontWeight(.bold)
							.foregroundColor(.white)
							.padding(5)
							.background(.yellow)
							.offset(x:0, y:120)
						
					}
					
				}
				ZStack {
					Plan(
						titulo: "TEAM",
						precio: "$399",
						textColor: .white,
						bgColor: .black,
						icon: "person.3.fill"
					)
					Text("Best for teams with 20 members")
					//.font(system(.caption, design: .rounded))
						.fontWeight(.bold)
						.foregroundColor(.white)
						.padding(5)
						.background(.yellow)
						.offset(x:0, y:105)
				}
				Spacer()
				
			}
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
			.padding()
			.navigationBarBackButtonHidden(true)
		}
	}
}

#Preview {
	Ejercicio3()
}

struct Title: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Choose")
				.font(.system(.largeTitle, design: .rounded))
				.fontWeight(.bold)
			Text("your plan !")
				.font(.system(.largeTitle, design: .rounded))
				.fontWeight(.bold)
		}
	}
}

struct Plan: View {
	var titulo: String
	var precio: String
	var textColor: Color
	var bgColor: Color
	var icon: String?
	var body: some View {
		VStack(spacing: 5){
			if let icon = icon {
				Image(systemName: icon)
					.font(.largeTitle)
					.foregroundColor(textColor)
			}
			Text(titulo)
				.font(.system(.title, design: .rounded))
				.fontWeight(.black)
				.foregroundColor(textColor)
			Text(precio)
				.font(.system(size: 40, weight: .heavy))
			//.fontWeight(.black)
				.foregroundColor(textColor)
			Text("Per month")
				.font(.system(.title, design: .rounded))
			//.fontWeight(.black)
				.foregroundColor(textColor)
		}
		.frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
		.padding(40)
		.background(bgColor)
		.cornerRadius(10)
	}
}
