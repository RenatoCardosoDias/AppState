//
//  ContentView.swift
//  AppCounterState
//
//  Created by Renato on 28/12/23.
//

import SwiftUI

struct ContentView: View {

	@State private var isOn: Bool = false

    var body: some View {
        VStack {
			Toggle(isOn: $isOn) {
				Text(isOn ? "ON" : "OFF")
					.font(.system(size: 20).bold())
					.foregroundStyle(.white)
			}.fixedSize() //remove os espaços extras e deixa somente o necessario

        } //end VStack
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(isOn ? .yellow : .black)
    }
}

#Preview {
    ContentView()
}
