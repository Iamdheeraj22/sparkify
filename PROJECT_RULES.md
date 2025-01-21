# Sparkify Project Rules

## Architecture
We follow the MVVM (Model-View-ViewModel) architecture pattern in this project. The responsibilities are divided as follows:
- **Model**: Manages the data and business logic of the application.
- **View**: Displays the data and sends user actions to the ViewModel.
- **ViewModel**: Acts as a bridge between the Model and the View, handling the presentation logic.

## Flutter Lint Rules
We adhere to the following Flutter lint rules to maintain code quality and consistency:
- Use `flutter_lints` package for standard linting rules.
- Ensure all public members are documented.
- Avoid using `print` statements for logging; use a logging package instead.
- Prefer using `const` constructors where possible.
- Follow naming conventions for classes, methods, and variables.
- Avoid using magic numbers; define constants instead.
- Ensure proper error handling and avoid empty catch blocks.

## Code Review
- All code changes must go through a code review process.
- Ensure that all unit tests pass before submitting a pull request.
- Write clear and concise commit messages.

## Testing
- Write unit tests for all business logic in the ViewModel and Model layers.
- Ensure UI tests cover major user interactions in the View layer.

## Documentation
- Maintain up-to-date documentation for all public APIs.
- Document any architectural decisions and trade-offs.

## Version Control
- Follow the Gitflow branching model.
- Use feature branches for new features and bug fixes.
- Merge changes to the `main` branch only after code review and testing.

## Dependencies
- Regularly update dependencies to their latest stable versions.
- Avoid using deprecated packages and APIs.

## Security
- Follow best practices for securing user data.
- Ensure proper validation and sanitization of user inputs.
- Regularly review and update security policies.

## Performance
- Optimize for performance, especially in the View layer.
- Avoid unnecessary rebuilds and re-renders.
- Use efficient data structures and algorithms.

## Accessibility
- Ensure the application is accessible to users with disabilities.
- Follow accessibility guidelines and best practices.

## Design
- Follow the design guidelines provided by the design team.
- Ensure a consistent look and feel across the application.

## Communication
- Regularly communicate with team members about progress and blockers.
- Use project management tools to track tasks and milestones.

## Weekly Plan

### Week 1: Authentication
- Implement Registration & Login
  - Phone Number
  - Email
  - Google
  - Facebook
- Testing and bug fixing

### Week 2: Home Page (Bottom Navigation)
- Implement Bottom Navigation
  - Home
  - Exploring
  - Likes
  - Chats
  - Profile
- Implement Location management
- Implement Filter
- Implement Notification
- Testing and bug fixing

### Week 3: My Profile
- Implement Personal Details
  - Edit profile Details
- Implement Settings
- Implement Terms & Conditions
- Implement Privacy & Policy
- Implement About Us
- Testing and bug fixing

### Week 4: Notification & Person Details
- Implement Notification
- Implement Person Details
- Testing and bug fixing

### Week 5: Communication
- Implement Chat
  - Message
  - Audio
  - Photo
  - Emoji
- Implement Searching Message
- Testing and bug fixing

### Week 6: App Theme
- Implement Dark Theme
- Implement Light Theme
- Implement Automatic Theme
- Testing and bug fixing
