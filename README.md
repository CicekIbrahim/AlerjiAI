
# AlerjiAi Mobile Application

AlerjiAi is an AI-powered mobile application for detecting allergens in packaged foods. Users can quickly and reliably learn about the allergens contained in products by taking a photo of them. This application aims to ensure healthy and safe consumption for allergic individuals.

## Features

• Fast and Reliable Allergen Detection: Enables users to quickly analyze the contents of packaged foods and reliably detect allergens.

•	User-Friendly Mobile Application: Provides a user-friendly mobile application developed with SwiftUI.

•	Custom-Trained YOLOv9 Model: Uses a YOLOv9 model trained with a dataset of product photos we captured and labeled, ensuring high accuracy in allergen detection.

•	LLM Integration: In case the model cannot provide results, an additional request is made to an LLM to provide extra verification and support, offering the most accurate information to the user.

•	Content Query with Firebase: Ensures the accurate determination of product names and queries content information from the Firebase database, providing comprehensive and up-to-date information to the user.

•	Raising Allergy Awareness: The project supports conscious consumption by allergic individuals, contributing to increased allergy awareness.

# Technologies Used

## Mobile Application:
• Development Environment: Xcode

• Programming Language: Swift

• Framework: SwiftUI

## Backend:

• Programming Language: Python

• Framework: Flask

• Tool: Ngrok

• Model: YOLOv9 (Trained with a dataset of photos of 40 different products we captured and labeled)

• Additional Model: OpenAI Language Learning Model (LLM)

## Database and Authentication:

• Firebase

## Labeling and Model Training:

• Tool: Roboflow

## Usage

1. 	Start the [AlerjiAi Python Project](https://github.com/CicekIbrahim/AlerjiAi-Python) and save the link provided by `ngrok`.

2. 	Insert the link in to the `Config.xcconfig` file.

3.	Start the application and take a photo of the product.
	
4.	The photo is sent to the backend and analyzed by the YOLOv9 model.
	
5.	The product name is determined and queried in the Firebase database.
	
6.	Allergens are detected and results are shown to the user.

## Screenshots

<p float="center">
  <img src="https://res.cloudinary.com/dusexzcp5/image/upload/v1717643813/IMG_1276_ala3mt.png" width="200" height="400">
  <img src="https://res.cloudinary.com/dusexzcp5/image/upload/v1717643813/IMG_1277_kkfy4y.png" width="200" height="400">
  <img src="https://res.cloudinary.com/dusexzcp5/image/upload/v1717643813/IMG_1278_nnycma.png" width="200" height="400">
</p>
