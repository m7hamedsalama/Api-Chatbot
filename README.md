This project provides a high-performance REST API backend specifically designed for the AI Competition. It leverages Google's state-of-the-art Gemini 2.5 Flash model to provide real-time responses.

✨ Key Features
💬 Context-Aware Chat: Remembers previous conversation turns (History).
📷 Multimodal Vision: Can analyze and describe images uploaded via API.
⚡ High Speed: Built on FastAPI and Uvicorn for maximum throughput.
🐳 Dockerized: Ready to deploy anywhere with a single command.
📂 Project Structure
Here is how the project is organized:

├── main.py # 🚀 The main application entry point (FastAPI logic)├── Dockerfile # 🐳 Configuration to build the container├── requirements.txt # 📦 List of Python dependencies└── README.md # 📄 Project documentation
⚙️ Installation & Setup
Option 1: Run Locally (Python) 🐍
Clone the repository:
git clone <your-repo-link>
cd <project-folder>
Install dependencies:Bashpip install -r requirements.txt Set your API Key:Open main.py and replace the placeholder with your Google Gemini API Key.Security Note: In production, use Environment Variables.Run the server:Bashuvicorn main:app --host 0.0.0.0 --port 8000 --reload The API will be live at: http://localhost:8000Option 2: Run with Docker 🐳 (Recommended)This ensures the app runs exactly the same on any machine.Build the image:Bashdocker build -t gemini-bot . Run the container:Bashdocker run -p 8000:8000 -e GOOGLE_API_KEY="YOUR_API_KEY_HERE" gemini-bot 🔌 API Endpoints Documentation1️⃣ Chat EndpointSends a message (and optionally an image) to the AI.URL: /chatMethod: POSTContent-Type: multipart/form-dataParameters:ParameterTypeRequiredDescriptiontextstringNoThe user's question or prompt.filefileNoAn image file (jpg, png) for the AI to analyze.Example Request (cURL):Bashcurl -X POST "http://localhost:8000/chat"
-F "text=Describe what you see in this image"
-F "file=@/path/to/your/image.jpg" Example Response:JSON{ "response": "I see a futuristic city with flying cars and neon lights..." } 
2️⃣ Reset History EndpointClears the conversation memory to start a fresh topic.URL: /resetMethod: POSTExample Request:Bashcurl -X POST "http://localhost:8000/reset" Example Response:JSON{ "status": "Conversation history reset." } 
🛠️ Built WithFastAPI - The modern web framework used.Google Gen AI SDK - For accessing Gemini models.Uvicorn - Lightning-fast ASGI server 
