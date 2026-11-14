
import SwiftUI

struct ContentView: View {

    @State private var username = ""
    @State private var password = ""
    @State private var message = ""

    var body: some View {

        VStack(spacing: 20) {

            Spacer()

            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.blue)

            Text("Welcome Back!")
                .font(.largeTitle)
                .bold()

            Text("Login to Your Account")
                .foregroundColor(.gray)

            TextField("Enter Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            SecureField("Enter Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            Button("LOGIN") {

                if username.isEmpty || password.isEmpty {
                    message = "Please enter all details"
                } else if username == "Mohana" && password == "12345" {
                    message = "Login Successful!"
                } else {
                    message = "Invalid Username or Password"
                }
            }
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)

            Text(message)
                .foregroundColor(.green)

            Spacer()
        }
        .padding(25)
    }
}

#Preview {
    ContentView()
}

