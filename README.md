# Hello iPhone — native personal-install test

A small SwiftUI hello-world app with a persistent tap counter. Runs offline after
installation. Supports iPhone and iPad on iOS/iPadOS 15 or newer. No website,
Expo Go, cloud account or development server is used by the running app.

The manual GitHub Actions workflow builds an unsigned arm64 iPhone device app
using Xcode, checks its platform and packages it as an IPA. It does not sign,
publish a release, request Apple credentials, install on a device, or run on push.
The build is bounded to ten minutes; the downloadable artifact is kept three days.

Install the resulting IPA using Sideloadly on Windows and a personal Apple account.
Initially pair the iPhone by USB and enable Wi-Fi sync in iTunes. Later installs
and seven-day signing renewals can use Wi-Fi while the phone and PC are reachable.
A Safari download of the unsigned IPA alone does not install it. Sideloadly must
perform signing and delivery. No paid Apple Developer membership is required for
this personal signing workflow. Apple sign-in and phone trust are operator steps.

Source and generated icon are original test materials. No credentials, personal
device IDs, proprietary project code, or user data are part of this repository.

References: https://sideloadly.io/faq and
https://docs.github.com/en/actions/reference/runners/github-hosted-runners
