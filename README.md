# tab_navigation

A Flutter project demonstrating tab-based navigation using [go_router](https://pub.dev/packages/go_router) with nested navigation and authentication flow.

## Features

- Tab navigation with three main sections (A, B, C)
- Nested navigation within each tab
- Login screen and authentication flow
- Route management using `GoRouter`
- Custom root and shell navigators for advanced navigation scenarios

## Route Structure

[GoRouter] Full paths for routes:
            ├─/ (Home)
            ├─/login (LoginScreen)
            └─ (ShellRoute)
              ├─/a
              │ └─/a/internal (ScreenAInternal)
              ├─/b
              │ └─/b/internal (ScreenBinternal)
              └─/c
                └─/c/internal (ScreenCinternal)