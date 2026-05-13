<!--
 Copyright (c) 2025 Nathan Kidd <nathankidd@hey.com>. All rights reserved.
 SPDX-License-Identifier: Proprietary
-->

# Fomantic-UI Component Inventory

Source: `formantic-ui/` (Fomantic-UI v2.9.4, pre-built distribution)

This document catalogs every element, component, module, collection, view,
behavior, and theme shipped with the vendored Fomantic-UI library, alongside
minimal SwiftUI code examples showing the native equivalent for each.

Individual component files live in `formantic-ui/components/`.
Bundled files: `semantic.css` / `semantic.min.css` and `semantic.js` / `semantic.min.js`.

---

## Summary

| Category    | Count | CSS | JS |
|-------------|------:|:---:|:--:|
| Globals     |     2 |  2  |  1 |
| Elements    |    18 | 18  |  0 |
| Collections |     6 |  6  |  1 |
| Views       |     6 |  6  |  0 |
| Modules     |    20 | 20  | 20 |
| Behaviors   |     3 |  0  |  3 |
| **Total**   | **55**| **52** | **25** |

---

## Globals

Foundational styles and utilities applied site-wide.

### Reset

CSS reset/normalize; border-box model, normalize.css v8.0.1, input appearance fixes.
**Files:** CSS

> SwiftUI has no CSS reset. Views start unstyled — there is nothing to reset.

### Site

Base site styles (typography, Lato font loading, page defaults); JS provides `$.site` utility for managing all registered modules.
**Files:** CSS+JS

```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .font(.custom("Lato", size: 14))
                .environment(\.colorScheme, .light)
        }
    }
}
```

---

## Elements

Standalone UI building blocks. CSS-only, no JavaScript behavior.

### Button

Buttons in many styles: primary, secondary, animated, labeled, icon, grouped, colored, sized.
**Files:** CSS

```swift
// Primary button
Button("Save") { save() }
    .buttonStyle(.borderedProminent)

// Icon button
Button(action: { download() }) {
    Label("Download", systemImage: "arrow.down.circle.fill")
}
.buttonStyle(.bordered)
.tint(.blue)

// Grouped buttons
HStack(spacing: 0) {
    Button("One") { }
    Button("Two") { }
    Button("Three") { }
}
.buttonStyle(.bordered)
```

### Container

Fixed-width page container with responsive breakpoints; text and fluid variants.
**Files:** CSS

```swift
VStack {
    Text("Page content goes here")
}
.frame(maxWidth: 960)
.padding(.horizontal)
```

### Divider

Horizontal/vertical dividers; can include text or icons; section dividers.
**Files:** CSS

```swift
VStack {
    Text("Above")
    Divider()
    Text("Below")
}

// Divider with text (horizontal rule with label)
HStack {
    Rectangle().frame(height: 1).foregroundStyle(.secondary)
    Text("OR").font(.caption).foregroundStyle(.secondary)
    Rectangle().frame(height: 1).foregroundStyle(.secondary)
}
```

### Emoji

Comprehensive emoji set rendered via CSS background-image sprites.
**Files:** CSS

```swift
// SwiftUI renders Unicode emoji natively
Text("\u{1F600} \u{1F389} \u{2764}\u{FE0F}")
    .font(.largeTitle)
```

### Flag

Country flag icons rendered via CSS sprites; all ISO 3166 country codes.
**Files:** CSS

```swift
// Use emoji flags — no sprite sheet needed
Text("\u{1F1FA}\u{1F1F8}")  // US flag
    .font(.title)

// Or use a custom image asset
Image("flag-us")
    .resizable()
    .frame(width: 24, height: 16)
```

### Header

Page and content headers (h1-h6); sub-headers, icon headers, dividing headers.
**Files:** CSS

```swift
// Page headers
Text("First Header").font(.largeTitle).bold()
Text("Second Header").font(.title)
Text("Third Header").font(.title2)

// Sub-header
VStack(alignment: .leading) {
    Text("Account Settings").font(.headline)
    Text("Manage your preferences").font(.subheadline).foregroundStyle(.secondary)
}

// Icon header
Label("Settings", systemImage: "gear")
    .font(.title2)

// Dividing header
VStack(alignment: .leading) {
    Text("Section Title").font(.headline)
    Divider()
}
```

### Icon

Icon font system; includes solid, outline, and brand icon sets via FontAwesome-compatible classes.
**Files:** CSS

```swift
// SF Symbols (Apple's icon system)
Image(systemName: "house.fill")
Image(systemName: "magnifyingglass")
Image(systemName: "heart")
Image(systemName: "heart.fill")

// Sized and colored
Image(systemName: "star.fill")
    .font(.title)
    .foregroundStyle(.yellow)
```

### Image

Image formatting: rounded, circular, bordered, fluid, avatar, centered, spaced.
**Files:** CSS

```swift
// Rounded image
Image("photo")
    .resizable()
    .scaledToFill()
    .frame(width: 200, height: 200)
    .clipShape(RoundedRectangle(cornerRadius: 8))

// Circular avatar
Image("avatar")
    .resizable()
    .scaledToFill()
    .frame(width: 40, height: 40)
    .clipShape(Circle())

// Bordered
Image("photo")
    .resizable()
    .scaledToFit()
    .border(Color.gray, width: 1)

// Async remote image
AsyncImage(url: URL(string: "https://example.com/photo.jpg")) { image in
    image.resizable().scaledToFit()
} placeholder: {
    ProgressView()
}
```

### Input

Input fields with icon, labeled, action, transparent, fluid, and sized variants.
**Files:** CSS

```swift
@State var text = ""
@State var password = ""

// Basic text field
TextField("Search...", text: $text)
    .textFieldStyle(.roundedBorder)

// Secure input
SecureField("Password", text: $password)
    .textFieldStyle(.roundedBorder)

// Input with icon (using overlay)
TextField("Search...", text: $text)
    .textFieldStyle(.roundedBorder)
    .overlay(alignment: .trailing) {
        Image(systemName: "magnifyingglass")
            .foregroundStyle(.secondary)
            .padding(.trailing, 8)
    }
```

### Label

Labels and tags: pointing, corner, ribbon, attached, circular, floating, colored.
**Files:** CSS

```swift
// Basic label (icon + text)
Label("Mail", systemImage: "envelope.fill")

// Tag-style label
Text("New")
    .font(.caption2).bold()
    .padding(.horizontal, 8)
    .padding(.vertical, 4)
    .background(.blue)
    .foregroundStyle(.white)
    .clipShape(Capsule())

// Floating badge on an icon
Image(systemName: "bell.fill")
    .font(.title2)
    .overlay(alignment: .topTrailing) {
        Text("3")
            .font(.caption2).bold()
            .foregroundStyle(.white)
            .frame(width: 16, height: 16)
            .background(.red, in: Circle())
            .offset(x: 6, y: -6)
    }
```

### List

Ordered, unordered, and bulleted lists; divided, relaxed, animated, horizontal variants.
**Files:** CSS

```swift
let items = ["Apples", "Oranges", "Bananas"]

// Basic list
List(items, id: \.self) { item in
    Text(item)
}

// Inset grouped style
List(items, id: \.self) { item in
    Text(item)
}
.listStyle(.insetGrouped)

// Horizontal list
ScrollView(.horizontal) {
    HStack(spacing: 12) {
        ForEach(items, id: \.self) { item in
            Text(item)
        }
    }
}
```

### Loader

Loading spinners: text loader, indeterminate, inline, sized, inverted, colored.
**Files:** CSS

```swift
// Indeterminate spinner
ProgressView()

// Spinner with label
ProgressView("Loading...")

// Colored / tinted
ProgressView()
    .tint(.blue)

// Large spinner
ProgressView()
    .scaleEffect(2.0)
```

### Placeholder

Placeholder/skeleton content (lines, headers, images) shown while content loads.
**Files:** CSS

```swift
// Redacted placeholder (skeleton)
VStack(alignment: .leading) {
    Text("Placeholder Title")
        .font(.headline)
    Text("This is a line of placeholder body text that will be redacted.")
    Text("Another line of text.")
}
.redacted(reason: .placeholder)
```

### Rail

Content rails that float alongside main content (left/right, attached, close).
**Files:** CSS

```swift
HStack(alignment: .top) {
    // Left rail
    VStack {
        Text("Side content")
    }
    .frame(width: 200)

    // Main content
    VStack {
        Text("Main content area")
    }
    .frame(maxWidth: .infinity)
}
```

### Reveal

Hidden content revealed on hover/active; fade, move, rotate effects.
**Files:** CSS

```swift
struct RevealView: View {
    @State private var isHovered = false

    var body: some View {
        ZStack {
            Image("hidden-content")
                .opacity(isHovered ? 1 : 0)
            Image("visible-content")
                .opacity(isHovered ? 0 : 1)
        }
        .onHover { hovering in
            withAnimation(.easeInOut(duration: 0.3)) {
                isHovered = hovering
            }
        }
    }
}
```

### Segment

Grouped content sections: raised, stacked, piled, vertical, inverted, padded, colored.
**Files:** CSS

```swift
// Basic segment (GroupBox)
GroupBox {
    Text("Content inside a segment.")
}

// Raised segment with shadow
VStack(alignment: .leading) {
    Text("Raised Segment")
}
.padding()
.background(.background)
.cornerRadius(8)
.shadow(color: .black.opacity(0.1), radius: 4, y: 2)

// Inverted (dark) segment
VStack {
    Text("Inverted").foregroundStyle(.white)
}
.padding()
.background(Color(.darkGray))
.cornerRadius(8)
```

### Step

Step indicators for multi-step workflows: ordered, vertical, attached, fluid.
**Files:** CSS

```swift
struct StepIndicator: View {
    let steps = ["Shipping", "Billing", "Confirm"]
    var currentStep = 1

    var body: some View {
        HStack(spacing: 0) {
            ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                HStack(spacing: 6) {
                    Image(systemName: index < currentStep ? "checkmark.circle.fill" : "\(index + 1).circle")
                        .foregroundStyle(index <= currentStep ? .blue : .secondary)
                    Text(step)
                        .foregroundStyle(index <= currentStep ? .primary : .secondary)
                }
                if index < steps.count - 1 {
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.secondary)
                        .padding(.horizontal, 8)
                }
            }
        }
    }
}
```

### Text

Inline text formatting with color and size variations.
**Files:** CSS

```swift
Text("Default text")
Text("Red text").foregroundStyle(.red)
Text("Small text").font(.caption)
Text("Large text").font(.title)
Text("Bold text").bold()

// Composed text
Text("Click ") + Text("here").bold().foregroundStyle(.blue) + Text(" to continue.")
```

---

## Collections

Composite components that group multiple elements together.

### Breadcrumb

Navigation breadcrumb trail with dividers (slash, arrow, chevron).
**Files:** CSS

```swift
struct Breadcrumb: View {
    let items: [String]

    var body: some View {
        HStack(spacing: 4) {
            ForEach(Array(items.enumerated()), id: \.offset) { index, item in
                if index > 0 {
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Text(item)
                    .foregroundStyle(index == items.count - 1 ? .primary : .blue)
            }
        }
        .font(.subheadline)
    }
}

// Usage
Breadcrumb(items: ["Home", "Products", "Shirts"])
```

### Form

Form layout and validation; field types, inline/grouped fields, states (loading, success, error, warning); JS provides comprehensive client-side validation rules.
**Files:** CSS+JS

```swift
@State var name = ""
@State var email = ""
@State var agree = false

Form {
    Section("Personal Info") {
        TextField("Name", text: $name)
        TextField("Email", text: $email)
            .textContentType(.emailAddress)
            .keyboardType(.emailAddress)
    }
    Section {
        Toggle("I agree to the terms", isOn: $agree)
    }
    Section {
        Button("Submit") { submit() }
            .disabled(!agree)
    }
}
```

### Grid

16-column responsive grid system; stackable, doubling, centered, reversed, divided, padded.
**Files:** CSS

```swift
// Fixed grid
Grid(alignment: .leading, horizontalSpacing: 12, verticalSpacing: 12) {
    GridRow {
        Text("A").frame(maxWidth: .infinity)
        Text("B").frame(maxWidth: .infinity)
        Text("C").frame(maxWidth: .infinity)
    }
    GridRow {
        Text("D").gridCellColumns(2)
        Text("E")
    }
}

// Adaptive grid (like responsive columns)
let columns = [GridItem(.adaptive(minimum: 150), spacing: 16)]

LazyVGrid(columns: columns, spacing: 16) {
    ForEach(0..<6) { i in
        RoundedRectangle(cornerRadius: 8)
            .fill(.blue.opacity(0.2))
            .frame(height: 100)
            .overlay(Text("Item \(i)"))
    }
}
```

### Menu

Navigation menus: tabular, pointing, secondary, vertical, fixed, inverted, icon, dropdown items.
**Files:** CSS

```swift
// Context menu
Menu("Options") {
    Button("Edit", systemImage: "pencil") { }
    Button("Duplicate", systemImage: "doc.on.doc") { }
    Divider()
    Button("Delete", systemImage: "trash", role: .destructive) { }
}

// Vertical navigation list
List {
    NavigationLink("Home", destination: HomeView())
    NavigationLink("Messages", destination: MessagesView())
    NavigationLink("Settings", destination: SettingsView())
}
.listStyle(.sidebar)
```

### Message

Alert/info messages: success, error, warning, info, positive, negative; dismissible, icon, floating.
**Files:** CSS

```swift
struct MessageBanner: View {
    enum Style { case info, success, warning, error }
    let style: Style
    let title: String
    let text: String
    @Binding var isVisible: Bool

    var color: Color {
        switch style {
        case .info: .blue
        case .success: .green
        case .warning: .orange
        case .error: .red
        }
    }

    var icon: String {
        switch style {
        case .info: "info.circle.fill"
        case .success: "checkmark.circle.fill"
        case .warning: "exclamationmark.triangle.fill"
        case .error: "xmark.circle.fill"
        }
    }

    var body: some View {
        if isVisible {
            HStack(alignment: .top, spacing: 10) {
                Image(systemName: icon).foregroundStyle(color)
                VStack(alignment: .leading, spacing: 2) {
                    Text(title).bold()
                    Text(text).font(.subheadline)
                }
                Spacer()
                Button { isVisible = false } label: {
                    Image(systemName: "xmark").foregroundStyle(.secondary)
                }
            }
            .padding()
            .background(color.opacity(0.1))
            .cornerRadius(8)
        }
    }
}
```

### Table

Data tables: definition, structured, single-line, fixed, selectable, striped, sortable, colored, responsive stackable.
**Files:** CSS

```swift
struct Person: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let email: String
}

let people = [
    Person(name: "Alice", age: 30, email: "alice@example.com"),
    Person(name: "Bob", age: 25, email: "bob@example.com"),
]

// macOS table
Table(people) {
    TableColumn("Name", value: \.name)
    TableColumn("Age") { Text("\($0.age)") }
    TableColumn("Email", value: \.email)
}

// iOS list-based table
List(people) { person in
    HStack {
        Text(person.name).frame(maxWidth: .infinity, alignment: .leading)
        Text("\(person.age)").frame(width: 40)
        Text(person.email).frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(.secondary)
    }
    .font(.subheadline)
}
```

---

## Views

Components for displaying specific content types.

### Ad

Standard ad unit sizes (leaderboard, banner, skyscraper, rectangle, etc.) following IAB standards.
**Files:** CSS

```swift
// Wrap a platform ad SDK view
import GoogleMobileAds

struct BannerAd: UIViewRepresentable {
    func makeUIView(context: Context) -> GADBannerView {
        let banner = GADBannerView(adSize: GADAdSizeBanner)
        banner.adUnitID = "ca-app-pub-xxx"
        banner.load(GADRequest())
        return banner
    }

    func updateUIView(_ uiView: GADBannerView, context: Context) {}
}

// Usage
BannerAd().frame(height: 50)
```

### Card

Content cards with image, header, meta, description, extra content; grouped, link, colored, fluid.
**Files:** CSS

```swift
struct CardView: View {
    let imageName: String
    let title: String
    let meta: String
    let description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .clipped()
            VStack(alignment: .leading, spacing: 6) {
                Text(title).font(.headline)
                Text(meta).font(.caption).foregroundStyle(.secondary)
                Text(description).font(.subheadline)
            }
            .padding()
        }
        .background(.background)
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.12), radius: 6, y: 3)
    }
}

// Usage
CardView(
    imageName: "photo",
    title: "Kristy",
    meta: "Joined in 2024",
    description: "Kristy is a front-end developer."
)
.frame(width: 280)
```

### Comment

Threaded comment displays with avatar, author, metadata, text, actions; nested/grouped.
**Files:** CSS

```swift
struct CommentView: View {
    let avatar: String
    let author: String
    let date: String
    let text: String

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: "person.circle.fill")
                .font(.title)
                .foregroundStyle(.secondary)
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(author).bold().font(.subheadline)
                    Text(date).font(.caption).foregroundStyle(.secondary)
                }
                Text(text).font(.subheadline)
                HStack(spacing: 16) {
                    Button("Reply") { }
                    Button("Like") { }
                }
                .font(.caption)
                .foregroundStyle(.blue)
            }
        }
    }
}

// Threaded (nested)
VStack(alignment: .leading, spacing: 12) {
    CommentView(avatar: "", author: "Matt", date: "Today at 5:42PM", text: "Great article!")
    CommentView(avatar: "", author: "Elliot", date: "Just now", text: "Thanks!")
        .padding(.leading, 40)
}
```

### Feed

Activity/event feed with date, summary, extra content, meta (likes); chronological event display.
**Files:** CSS

```swift
struct FeedEvent: Identifiable {
    let id = UUID()
    let user: String
    let action: String
    let time: String
}

struct FeedView: View {
    let events: [FeedEvent]

    var body: some View {
        LazyVStack(alignment: .leading, spacing: 16) {
            ForEach(events) { event in
                HStack(alignment: .top, spacing: 10) {
                    Image(systemName: "person.circle.fill")
                        .font(.title2)
                        .foregroundStyle(.secondary)
                    VStack(alignment: .leading, spacing: 2) {
                        Text("\(event.user) ").bold() + Text(event.action)
                        Text(event.time)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    .font(.subheadline)
                }
                Divider()
            }
        }
    }
}
```

### Item

Grouped content items with image and content; aligned, divided, relaxed, link variants.
**Files:** CSS

```swift
struct ItemRow: View {
    let imageName: String
    let title: String
    let description: String

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            VStack(alignment: .leading, spacing: 4) {
                Text(title).font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
        }
    }
}

// Usage in a list
List {
    ItemRow(imageName: "product1", title: "Widget", description: "A great widget.")
    ItemRow(imageName: "product2", title: "Gadget", description: "An even better gadget.")
}
```

### Statistic

Numeric statistics display with value and label; horizontal, colored, sized, grouped.
**Files:** CSS

```swift
struct StatisticView: View {
    let value: String
    let label: String
    var color: Color = .primary

    var body: some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundStyle(color)
            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
                .textCase(.uppercase)
        }
    }
}

// Grouped statistics
HStack(spacing: 40) {
    StatisticView(value: "5,550", label: "Downloads", color: .blue)
    StatisticView(value: "12", label: "Contributors", color: .green)
    StatisticView(value: "4.9", label: "Rating", color: .orange)
}
```

---

## Modules

Interactive components with both CSS styling and JavaScript behavior.

### Accordion

Collapsible content panels; exclusive or multiple open; nested; styled or basic.
**Files:** CSS+JS

```swift
// Single group
DisclosureGroup("What is a dog?") {
    Text("A dog is a domesticated animal known for its loyalty and companionship.")
        .padding(.vertical, 4)
}

// Multiple groups (accordion-style)
struct AccordionView: View {
    @State private var expanded: Set<String> = []

    var body: some View {
        VStack {
            DisclosureGroup("Section A", isExpanded: binding(for: "a")) {
                Text("Content for section A")
            }
            DisclosureGroup("Section B", isExpanded: binding(for: "b")) {
                Text("Content for section B")
            }
        }
    }

    func binding(for key: String) -> Binding<Bool> {
        Binding(
            get: { expanded.contains(key) },
            set: { isExpanding in
                if isExpanding { expanded = [key] }
                else { expanded.remove(key) }
            }
        )
    }
}
```

### Calendar

Date/time picker; supports datetime, date, time, month, year modes; range selection, min/max dates, popup-based.
**Files:** CSS+JS

```swift
@State var date = Date()
@State var dates: Set<DateComponents> = []

// Date picker
DatePicker("Date", selection: $date, displayedComponents: .date)

// Date & time picker
DatePicker("Date & Time", selection: $date)

// Time only
DatePicker("Time", selection: $date, displayedComponents: .hourAndMinute)

// Graphical style
DatePicker("Pick a date", selection: $date)
    .datePickerStyle(.graphical)

// Multi-date picker
MultiDatePicker("Select dates", selection: $dates)
```

### Checkbox

Checkboxes, radio buttons, toggles, sliders; indeterminate state; fitted, read-only.
**Files:** CSS+JS

```swift
@State var isChecked = false
@State var isOn = true
@State var choice = "A"

// Checkbox (macOS) / Toggle (iOS)
Toggle("Enable notifications", isOn: $isChecked)

// Toggle switch style (explicit)
Toggle("Airplane Mode", isOn: $isOn)
    .toggleStyle(.switch)

// Radio buttons via Picker
Picker("Option", selection: $choice) {
    Text("Option A").tag("A")
    Text("Option B").tag("B")
    Text("Option C").tag("C")
}
.pickerStyle(.radioGroup)  // macOS
```

### Dimmer

Page/element overlay dimmer; content dimmer; inverted; blurring; simple (CSS-only hover).
**Files:** CSS+JS

```swift
@State var isDimmed = false

ZStack {
    VStack {
        Text("Main content")
        Button("Toggle Dimmer") { isDimmed.toggle() }
    }

    if isDimmed {
        Color.black.opacity(0.6)
            .ignoresSafeArea()
            .onTapGesture { isDimmed = false }
            .overlay {
                Text("Dimmed content")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
    }
}
.animation(.easeInOut, value: isDimmed)
```

### Dropdown

Selection dropdowns; multi-select, search, remote data, clearable, grouped, pointing.
**Files:** CSS+JS

```swift
@State var selection = "Apple"
let options = ["Apple", "Banana", "Cherry", "Date"]

// Basic dropdown
Picker("Fruit", selection: $selection) {
    ForEach(options, id: \.self) { option in
        Text(option).tag(option)
    }
}
.pickerStyle(.menu)

// Inline / segmented
Picker("Fruit", selection: $selection) {
    ForEach(options, id: \.self) { Text($0) }
}
.pickerStyle(.segmented)

// Menu with icons
Menu("Actions") {
    Button("Edit", systemImage: "pencil") { }
    Button("Share", systemImage: "square.and.arrow.up") { }
    Menu("Move to...") {
        Button("Folder A") { }
        Button("Folder B") { }
    }
}
```

### Embed

Embedded video/iframe content; YouTube and Vimeo integration; placeholder images; auto-play.
**Files:** CSS+JS

```swift
import WebKit

struct WebEmbed: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.load(URLRequest(url: url))
    }
}

// Usage: embed a YouTube video
WebEmbed(url: URL(string: "https://www.youtube.com/embed/dQw4w9WgXcQ")!)
    .frame(height: 220)
    .cornerRadius(8)
```

### Flyout

Slide-out panel from screen edge; similar to sidebar but renders over content; overlay behavior.
**Files:** CSS+JS

```swift
@State var showFlyout = false

VStack {
    Button("Show Flyout") { showFlyout = true }
}
.sheet(isPresented: $showFlyout) {
    VStack(alignment: .leading, spacing: 16) {
        Text("Flyout Panel").font(.headline)
        Text("Slide-out content here.")
        Spacer()
        Button("Close") { showFlyout = false }
    }
    .padding()
    .presentationDetents([.medium, .large])
}
```

### Modal

Dialog windows; fullscreen, basic, mini/tiny/small/large; scrolling; multiple modals; dimmer integration.
**Files:** CSS+JS

```swift
@State var showSheet = false
@State var showFullscreen = false
@State var showAlert = false

VStack(spacing: 16) {
    // Sheet (modal)
    Button("Show Sheet") { showSheet = true }
    .sheet(isPresented: $showSheet) {
        VStack {
            Text("Modal Content").font(.title)
            Button("Dismiss") { showSheet = false }
        }
        .padding()
    }

    // Full-screen cover
    Button("Fullscreen") { showFullscreen = true }
    .fullScreenCover(isPresented: $showFullscreen) {
        VStack {
            Text("Fullscreen Modal").font(.title)
            Button("Close") { showFullscreen = false }
        }
    }

    // Alert dialog
    Button("Alert") { showAlert = true }
    .alert("Are you sure?", isPresented: $showAlert) {
        Button("Cancel", role: .cancel) { }
        Button("Delete", role: .destructive) { }
    } message: {
        Text("This action cannot be undone.")
    }
}
```

### Nag

Persistent notification/cookie nag bar; fixed position; dismissible with cookie/storage persistence.
**Files:** CSS+JS

```swift
struct NagBanner: View {
    @AppStorage("nagDismissed") var isDismissed = false

    var body: some View {
        if !isDismissed {
            HStack {
                Text("We use cookies to improve your experience.")
                    .font(.subheadline)
                Spacer()
                Button("Got it") {
                    isDismissed = true
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
            }
            .padding()
            .background(.bar)
        }
    }
}

// Pin to bottom of screen
VStack {
    ContentView()
    Spacer()
    NagBanner()
}
```

### Popup

Tooltips and popup content; positioning (top, bottom, left, right); hoverable; flowing; wide; HTML content.
**Files:** CSS+JS

```swift
// Popover
@State var showPopover = false

Button("Show Info") { showPopover = true }
    .popover(isPresented: $showPopover) {
        VStack(alignment: .leading, spacing: 8) {
            Text("Popover Title").font(.headline)
            Text("Additional details shown in a floating popup.")
                .font(.subheadline)
        }
        .padding()
        .frame(width: 240)
    }

// Tooltip (macOS / iOS 18+)
Button("Hover me") { }
    .help("This button does something useful.")
```

### Progress

Progress bars; indicating, active, attached, inverted, colored; label with percentage/ratio/value.
**Files:** CSS+JS

```swift
@State var progress: Double = 0.65

// Determinate progress bar
ProgressView(value: progress) {
    Text("Uploading...")
} currentValueLabel: {
    Text("\(Int(progress * 100))%")
}

// Linear bar style
ProgressView(value: 3, total: 10)
    .progressViewStyle(.linear)
    .tint(.green)

// Indeterminate spinner
ProgressView("Processing...")
```

### Slider

Range slider control; single and range mode; vertical; labeled ticks; reversed; smooth/discrete steps.
**Files:** CSS+JS

```swift
@State var value: Double = 50

// Basic slider
Slider(value: $value, in: 0...100)

// With labels
Slider(value: $value, in: 0...100) {
    Text("Volume")
} minimumValueLabel: {
    Image(systemName: "speaker.fill")
} maximumValueLabel: {
    Image(systemName: "speaker.wave.3.fill")
}

// Stepped slider
Slider(value: $value, in: 0...100, step: 10) {
    Text("Brightness")
}
```

### Rating

Star/heart rating widget; interactive or read-only; clearable; custom icon support.
**Files:** CSS+JS

```swift
struct RatingView: View {
    @Binding var rating: Int
    var maximum: Int = 5
    var icon: String = "star"

    var body: some View {
        HStack(spacing: 4) {
            ForEach(1...maximum, id: \.self) { index in
                Image(systemName: index <= rating ? "\(icon).fill" : icon)
                    .foregroundStyle(index <= rating ? .yellow : .gray)
                    .onTapGesture { rating = index }
            }
        }
        .font(.title2)
    }
}

// Usage
@State var rating = 3
RatingView(rating: $rating)
```

### Search

Search component; local and remote data sources; category results; standard and category display.
**Files:** CSS+JS

```swift
@State var searchText = ""
let items = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]

NavigationStack {
    List {
        ForEach(filteredItems, id: \.self) { item in
            Text(item)
        }
    }
    .searchable(text: $searchText, prompt: "Search fruits...")
    .navigationTitle("Fruits")
}

var filteredItems: [String] {
    if searchText.isEmpty { return items }
    return items.filter { $0.localizedCaseInsensitiveContains(searchText) }
}
```

### Shape

3D CSS shape transformations; flip, rotate sides; cube/text animations.
**Files:** CSS+JS

```swift
struct FlipCard: View {
    @State var isFlipped = false

    var body: some View {
        ZStack {
            // Back
            RoundedRectangle(cornerRadius: 12)
                .fill(.blue)
                .overlay(Text("Back").foregroundStyle(.white).font(.title))
                .opacity(isFlipped ? 1 : 0)
                .rotation3DEffect(.degrees(isFlipped ? 0 : -180), axis: (x: 0, y: 1, z: 0))

            // Front
            RoundedRectangle(cornerRadius: 12)
                .fill(.green)
                .overlay(Text("Front").foregroundStyle(.white).font(.title))
                .opacity(isFlipped ? 0 : 1)
                .rotation3DEffect(.degrees(isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
        }
        .frame(width: 200, height: 120)
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.5)) { isFlipped.toggle() }
        }
    }
}
```

### Sidebar

Slide-out sidebar navigation; push/overlay/scale/uncover transitions; left/right/top/bottom directions.
**Files:** CSS+JS

```swift
struct SidebarApp: View {
    var body: some View {
        NavigationSplitView {
            List {
                NavigationLink("Inbox", value: "inbox")
                NavigationLink("Drafts", value: "drafts")
                NavigationLink("Sent", value: "sent")
                NavigationLink("Trash", value: "trash")
            }
            .navigationTitle("Mail")
        } detail: {
            Text("Select a folder")
                .foregroundStyle(.secondary)
        }
    }
}
```

### Sticky

Sticky/fixed position elements that follow scroll; bound to context; push behavior.
**Files:** CSS+JS

```swift
ScrollView {
    LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
        Section {
            ForEach(0..<20) { i in
                Text("Row \(i)")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
            }
        } header: {
            Text("Sticky Header")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.bar)
        }
    }
}
```

### Tab

Tab navigation; local and remote content loading; history/hash support; dynamic tab path evaluation.
**Files:** CSS+JS

```swift
@State var selectedTab = 0

TabView(selection: $selectedTab) {
    Text("Home Content")
        .tabItem {
            Label("Home", systemImage: "house")
        }
        .tag(0)

    Text("Search Content")
        .tabItem {
            Label("Search", systemImage: "magnifyingglass")
        }
        .tag(1)

    Text("Profile Content")
        .tabItem {
            Label("Profile", systemImage: "person")
        }
        .tag(2)
}
```

### Toast

Toast notifications; positioned in screen corners; progress bar; colored; actions; typed (info/success/warning/error).
**Files:** CSS+JS

```swift
struct ToastView: View {
    let message: String
    let icon: String
    let color: Color
    @Binding var isPresented: Bool

    var body: some View {
        if isPresented {
            HStack(spacing: 10) {
                Image(systemName: icon)
                    .foregroundStyle(color)
                Text(message)
                    .font(.subheadline)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(.ultraThinMaterial)
            .cornerRadius(10)
            .shadow(radius: 8)
            .transition(.move(edge: .top).combined(with: .opacity))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation { isPresented = false }
                }
            }
        }
    }
}

// Usage: overlay on top of your root view
@State var showToast = false

ZStack(alignment: .top) {
    ContentView()
    ToastView(
        message: "Settings saved!",
        icon: "checkmark.circle.fill",
        color: .green,
        isPresented: $showToast
    )
    .padding(.top, 50)
}
```

### Transition

CSS animation framework; fade, scale, slide, fly, swing, bounce, flash, jiggle, and many more animation types.
**Files:** CSS+JS

```swift
@State var isVisible = false

VStack(spacing: 20) {
    Button("Toggle") { withAnimation { isVisible.toggle() } }

    if isVisible {
        // Fade + scale
        Text("Fade in")
            .transition(.opacity.combined(with: .scale))

        // Slide from bottom
        Text("Slide up")
            .transition(.move(edge: .bottom))

        // Asymmetric (different in vs out)
        Text("Fly in, fade out")
            .transition(.asymmetric(
                insertion: .move(edge: .leading),
                removal: .opacity
            ))
    }
}
.animation(.spring(duration: 0.4), value: isVisible)
```

---

## Behaviors

JavaScript-only utilities with no dedicated CSS.

### API

AJAX request management; named API endpoints; response caching; automatic form serialization; state management during requests.
**Files:** JS

```swift
// async/await with URLSession
struct APIClient {
    func fetchUsers() async throws -> [User] {
        let url = URL(string: "https://api.example.com/users")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([User].self, from: data)
    }
}

// Usage in a view
struct UsersView: View {
    @State var users: [User] = []
    @State var isLoading = false

    var body: some View {
        List(users) { user in
            Text(user.name)
        }
        .overlay { if isLoading { ProgressView() } }
        .task {
            isLoading = true
            users = (try? await APIClient().fetchUsers()) ?? []
            isLoading = false
        }
    }
}
```

### State

UI state management; activate/deactivate states on elements; text/class toggling based on state; button state management.
**Files:** JS

```swift
// SwiftUI state management is built into the framework

// Local state
@State var isActive = false

// Shared state via Observable
@Observable
class AppState {
    var isLoggedIn = false
    var selectedTab = 0
    var theme: Theme = .light
}

// Binding: parent passes state to child
struct ChildView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Feature", isOn: $isOn)
    }
}

// Environment: inject state deeply
struct RootView: View {
    @State var appState = AppState()

    var body: some View {
        ContentView()
            .environment(appState)
    }
}
```

### Visibility

Scroll-based visibility detection; callbacks for passing, top/bottom visible; image lazy loading; fixed position on scroll.
**Files:** JS

```swift
// onAppear / onDisappear
List(items) { item in
    Text(item.title)
        .onAppear { loadMoreIfNeeded(item: item) }
}

// Lazy loading images (automatic with AsyncImage)
AsyncImage(url: imageURL) { image in
    image.resizable().scaledToFit()
} placeholder: {
    Color.gray.opacity(0.2)
}

// Geometry-based scroll position tracking
ScrollView {
    ForEach(items) { item in
        Text(item.title)
            .background(
                GeometryReader { geo in
                    Color.clear.preference(
                        key: OffsetKey.self,
                        value: geo.frame(in: .global).minY
                    )
                }
            )
    }
}
```

---

## Themes

Bundled under `formantic-ui/themes/`.

| Theme        | Assets |
|--------------|--------|
| **default**  | Lato font family (Regular, Bold, Italic, BoldItalic in woff/woff2), solid + outline + brand icon fonts |
| **basic**    | Simplified icon font (icons.woff/woff2) |
| **famfamfam** | Flag sprite image (flags.png) |
| **github**   | Octicons icon font (octicons.woff/woff2) |
| **material** | Material Design icon font (icons.woff/woff2) |
