# Define the default target
.DEFAULT_GOAL := help

# Help command to list all available commands
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  run-development Run the application with development flavor"
	@echo "  run-production  Run the application with production flavor"
	@echo "  run-staging     Run the application with staging flavor"
	@echo "  build-development Build the application with development flavor"
	@echo "  build-production  Build the application with production flavor"
	@echo "  build-staging     Build the application with staging flavor"


# Command to run the application with development flavor
run-development:
	@echo "Running the application with development flavor..."
	flutter run --flavor development --target lib/main_development.dart

# Command to run the application with production flavor
run-production:
	@echo "Running the application with production flavor..."
	flutter run --flavor production --target lib/main_production.dart

# Command to run the application with staging flavor
run-staging:
	@echo "Running the application with staging flavor..."
	flutter run --flavor staging --target lib/main_staging.dart

# Command to build the application with development flavor
build-development:
	@echo "Building the application with development flavor..."
	flutter build apk --flavor development --target lib/main_development.dart

# Command to build the application with production flavor
build-production:
	@echo "Building the application with production flavor..."
	flutter build apk --flavor production --target lib/main_production.dart

# Command to build the application with staging flavor
build-staging:
	@echo "Building the application with staging flavor..."
	flutter build apk --flavor staging --target lib/main_staging.dart
