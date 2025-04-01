# Smart Aquaculture

## Overview

The **Smart Aquaculture** dashboard is a web-based application built using Flutter to monitor and visualize water quality parameters in aquatic environments. The dashboard provides real-time data visualization, alerts, and insights to help researchers, environmentalists, and fishery managers maintain healthy water ecosystems.

## Features

- **Real-Time Monitoring**: Fetch and display real-time water quality data such as temperature, pH level, dissolved oxygen, and turbidity.
- **Interactive Dashboard**: Graphical representation of water parameters for easy analysis.
- **Alert System**: Notification system for detecting abnormalities in water quality.
- **Historical Data Analysis**: View past trends and patterns for better decision-making.
- **Responsive UI**: Adaptive design for both desktop and mobile devices.
- **User Authentication**: Secure login and user-specific dashboards.

## Technologies Used

- **Flutter** (for building the web UI)
- **Dart** (programming language)
- **Firebase** / **MinIO** (for backend data storage and authentication)
- **REST APIs** (to fetch real-time data from IoT sensors)
- **Charts Package** (for data visualization)

## Installation & Setup

1. **Clone the repository**:

   ```sh
   git clone https://github.com/yourusername/smart-aquaculture.git
   cd smart-aquaculture
   ```

2. **Install dependencies**:

   ```sh
   flutter pub get
   ```

3. **Run the application**:

   ```sh
   flutter run -d chrome
   ```

## Usage

- Sign in to access the dashboard.
- Connect IoT sensors to transmit real-time data.
- View graphs and tables to analyze water conditions.
- Receive alerts when conditions go beyond safe limits.

## Contributing

Contributions are welcome! Please fork the repository, make changes, and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
