

import SwiftUI

struct LostItem: Identifiable {
    let id = UUID()
    let name: String
    let location: String
    let status: String
    let icon: String
}

struct ContentView: View {

    @State private var searchText = ""

    let items = [
        LostItem(name: "Black Wallet",
                 location: "College Library",
                 status: "LOST",
                 icon: "wallet.pass.fill"),

        LostItem(name: "Apple Watch",
                 location: "College Canteen",
                 status: "FOUND",
                 icon: "applewatch"),

        LostItem(name: "Blue Water Bottle",
                 location: "Classroom",
                 status: "LOST",
                 icon: "waterbottle.fill"),

        LostItem(name: "College ID Card",
                 location: "Bus Stop",
                 status: "FOUND",
                 icon: "person.text.rectangle.fill")
    ]

    var filteredItems: [LostItem] {
        if searchText.isEmpty {
            return items
        }

        return items.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {

        NavigationStack {

            VStack(alignment: .leading, spacing: 18) {

                Text("Find Your Belongings")
                    .font(.title)
                    .bold()

                Text("Lost something? Let's find it!")
                    .foregroundColor(.gray)

                TextField("Search items...", text: $searchText)
                    .padding()
                    .background(Color.gray.opacity(0.12))
                    .cornerRadius(12)

                Text("Recent Items")
                    .font(.title2)
                    .bold()

                List(filteredItems) { item in

                    HStack(spacing: 15) {

                        Image(systemName: item.icon)
                            .font(.title2)
                            .foregroundColor(.blue)
                            .frame(width: 45, height: 45)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)

                        VStack(alignment: .leading, spacing: 6) {

                            Text(item.name)
                                .font(.headline)

                            Text(item.location)
                                .font(.caption)
                                .foregroundColor(.gray)

                            Text(item.status)
                                .font(.caption)
                                .bold()
                                .foregroundColor(
                                    item.status == "LOST" ? .red : .green
                                )
                        }

                        Spacer()
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(.plain)
            }
            .padding()
            .navigationTitle("Lost & Found")
        }
    }
}
