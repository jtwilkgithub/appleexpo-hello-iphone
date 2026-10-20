import SwiftUI

@main
struct HelloIPhoneApp: App {
    var body: some Scene {
        WindowGroup {
            HelloView()
        }
    }
}

struct HelloView: View {
    @AppStorage("helloTapCount") private var tapCount = 0
    private let mint = Color(red: 0.56, green: 0.89, blue: 0.82)

    var body: some View {
        ZStack {
            Color(red: 0.06, green: 0.11, blue: 0.18).ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Label("APPLEEXPO / FIRST NATIVE TEST", systemImage: "iphone")
                        .font(.caption.weight(.semibold))
                        .foregroundColor(mint)
                        .padding(.top, 24)
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Hello,")
                        Text("iPhone.").foregroundColor(mint)
                    }
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .minimumScaleFactor(0.65)
                    Text("Your first installed test app.")
                        .font(.title3)
                    Text("Native SwiftUI. No website or Expo Go.\nWorks offline after installation.")
                        .foregroundColor(.white.opacity(0.7))
                        .lineSpacing(5)
                    VStack(alignment: .leading, spacing: 16) {
                        Text("GIVE IT A TAP").font(.caption.weight(.semibold))
                        Text("\(tapCount)")
                            .font(.system(size: 76, weight: .bold, design: .rounded))
                            .accessibilityLabel("Tap count: \(tapCount)")
                        Button {
                            if tapCount < Int.max { tapCount += 1 }
                        } label: {
                            HStack {
                                Text("Tap to say hello")
                                Spacer()
                                Image(systemName: "hand.tap.fill")
                            }
                            .font(.headline)
                            .padding(18)
                            .foregroundColor(Color(red: 0.06, green: 0.16, blue: 0.17))
                            .background(mint)
                            .cornerRadius(14)
                        }
                        .buttonStyle(.plain)
                        Button("Reset counter") { tapCount = 0 }
                            .font(.subheadline)
                            .foregroundColor(mint)
                            .frame(maxWidth: .infinity, minHeight: 44)
                        Text("Your count is saved on this device.")
                            .font(.footnote)
                            .foregroundColor(.white.opacity(0.65))
                    }
                    .padding(22)
                    .background(Color.white.opacity(0.05))
                    .cornerRadius(22)
                    Text("Hello iPhone · Version 1.0 · Build 1")
                        .font(.footnote)
                        .foregroundColor(.white.opacity(0.55))
                    Text("Personal sideloading test")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.55))
                }
                .padding(24)
                .frame(maxWidth: 550)
                .frame(maxWidth: .infinity)
            }
        }
        .foregroundColor(.white)
        .preferredColorScheme(.dark)
    }
}
