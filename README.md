🔍 TruthSeeker: The Largest Social Media Ground Truth Dataset for Real/Fake Content

TruthSeeker is a web-based application designed to analyze and classify social media content as Real or Fake using a large-scale ground truth dataset. The system enables users to upload datasets, manage content records, and identify post authenticity through hash-based analysis and classification techniques. It provides an efficient platform for studying misinformation, fake news detection, and content verification in social media environments.

The project includes separate modules for administrators and users, allowing dataset management, user authentication, result visualization, and content analysis. By leveraging structured datasets and automated classification processes, TruthSeeker helps researchers and developers build reliable solutions for detecting misleading information online.

🚀 Features
User Registration and Authentication
Dataset Upload and Management
Real/Fake Content Classification
Hash-Based Content Verification
Admin Dashboard for Monitoring
Result Analysis and Visualization
Social Media Content Authenticity Detection
🛠 Technologies Used
Java (JSP)
HTML, CSS, JavaScript
MySQL Database
Apache Tomcat
Dataset Analytics
🎯 Objective

To combat misinformation by providing a reliable platform for analyzing social media content and determining whether information is genuine or misleading using a large ground truth dataset.

This project demonstrates practical applications of web development, database management, data analysis, and fake content detection in social media ecosystems.

## 📂 Project Structure

TruthSeeker/
│
├── src/
│   ├── database/
│   │   ├── DBConnection.java
│   │   └── DatabaseOperations.java
│   │
│   ├── authentication/
│   │   ├── Login.java
│   │   ├── Register.java
│   │   └── UserManagement.java
│   │
│   ├── detection/
│   │   ├── FakeNewsDetection.java
│   │   ├── ContentAnalyzer.java
│   │   └── HashVerification.java
│   │
│   └── utilities/
│       ├── Helper.java
│       └── Validation.java
│
├── WebContent/
│   ├── index.jsp
│   ├── login.jsp
│   ├── register.jsp
│   ├── uploadDataset.jsp
│   ├── analyzeContent.jsp
│   ├── results.jsp
│   ├── adminDashboard.jsp
│   ├── css/
│   ├── js/
│   └── images/
│
├── dataset/
│   └── TruthSeeker_Dataset.csv
│
├── database/
│   └── truthseeker.sql
│
├── screenshots/
│   ├── homepage.png
│   ├── login.png
│   └── results.png
│
├── README.md
└── pom.xml / build files
