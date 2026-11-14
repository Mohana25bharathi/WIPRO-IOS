
import SwiftUI

struct ContentView: View {

    @State private var newTask = ""

    @State private var tasks = [
        "Learn Swift",
        "Practice SwiftUI",
        "Prepare for Interview"
    ]

    var body: some View {

        VStack(spacing: 20) {

            Text("My To-Do List")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.blue)

            TextField("Enter your task", text: $newTask)
                .padding()
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)

            Button("Add Task") {

                if !newTask.isEmpty {
                    tasks.append(newTask)
                    newTask = ""
                }
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)

            Text("My Tasks")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)

            ScrollView {

                VStack(spacing: 15) {

                    ForEach(tasks, id: \.self) { task in

                        HStack {

                            Text("📌")
                            
                            Text(task)
                                .foregroundColor(.black)

                            Spacer()

                            Button("Delete") {
                                tasks.removeAll { $0 == task }
                            }
                            .foregroundColor(.red)
                        }
                        .padding()
                        .background(Color.gray.opacity(0.15))
                        .cornerRadius(10)
                    }
                }
            }

            Spacer()
        }
        .padding(25)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white.ignoresSafeArea())
    }
}

