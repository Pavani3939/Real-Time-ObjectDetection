# 👁️ Detectra AI — Real-Time Object Detection System

**Detectra AI** is an intelligent, full-stack computer vision application engineered to detect, classify, and track real-world objects in real time. Powered by Ultralytics YOLOv8, Flask, and an interactive dark-themed dashboard, the system processes image uploads and live webcam streams with high frame rates, precision bounding boxes, and comprehensive analytics.

🚀 **[Live Demo](https://real-time-object-detection-3pcr.vercel.app/dashboard)**  
*(Note: The live demo frontend runs on Vercel. To utilize full local inference and live webcam stream detection with the YOLOv8 AI engine, please follow the local setup instructions below.)*

---

## 🌟 Key Features

- **Real-Time Detection Engine:** Leverages YOLOv8 deep learning architecture to deliver sub-millisecond inference and multi-class object detection.
- **Dual Input Modes:** Seamlessly switch between high-resolution image uploads (`PNG`, `JPG`, `WEBP`) and live browser webcam frame capture.
- **Interactive Bounding Box Overlays:** Dynamic canvas overlay rendering real-time bounding boxes, category labels, and precision confidence percentages.
- **Detection History & SQLite Persistence:** Automatically logs detection sessions, detected labels, confidence scores, and timestamps in an embedded SQLite database.
- **Analytics & Visualizations:** Visual dashboards featuring Chart.js displaying class distribution, confidence histograms, and detection frequency over time.
- **Customizable Thresholds:** In-app settings slider to dynamically tune confidence threshold, IOU (NMS) overlap threshold, and maximum detections on the fly.
- **CSV Data Export:** One-click CSV export of historical detection logs for dataset creation or reporting.

---

## 🛠️ Modern Tech Stack & Tooling

- **AI & Deep Learning:** Ultralytics YOLOv8, PyTorch (`torch`, `torchvision`), OpenCV (`opencv-python`)
- **Backend API:** Python 3.10+, Flask, Flask-CORS
- **Database & Persistence:** SQLite3
- **Frontend Architecture:** Modern HTML5, CSS3 Grid/Flexbox, Vanilla ES6+ JavaScript, Chart.js
- **Typography & Styling:** Google Fonts (Syne + DM Mono), Cyber-Dark Glassmorphism Theme
- **Cloud & Deployment:** Vercel (Frontend), GitHub Actions (Pages deployment workflow)

---

## 📂 Project Structure

```text
Detectra-AI/
├── frontend/             # Client-side web dashboard source files
│   ├── index.html        # Main dashboard markup & landing interface
│   ├── style.css         # Dark theme styles & glassmorphic UI
│   └── script.js         # Frontend controller, API bridge & canvas rendering
├── backend/              # Flask REST API & computer vision service
│   ├── app.py            # API routing, image handling & SQLite database operations
│   ├── detect.py         # YOLOv8 inference wrapper & bounding box processor
│   └── yolov8n.pt        # Pretrained YOLOv8 nano model weights
├── database/             # SQLite database storage directory
│   └── detections.db     # Auto-generated database recording historical detections
├── model/                # Custom model weights folder
│   ├── best.pt           # Custom trained model weights
│   └── last.pt           # Last checkpoint weights
├── uploads/              # Storage directory for captured & uploaded frames
├── index.html            # Root web entrypoint for cloud hosting
├── style.css             # Root stylesheet
├── script.js             # Root client logic
├── vercel.json           # Vercel cloud configuration
└── requirements.txt      # Python dependencies manifest
```

---

## 🚀 Setup & Launch Instructions

### Prerequisites
- Python 3.9 or higher
- Git

### 1. Clone the Repository
```bash
git clone https://github.com/Pavani3939/Real-Time-ObjectDetection.git
cd Real-Time-ObjectDetection
```

### 2. Set Up Virtual Environment
```bash
# Windows
python -m venv venv
venv\Scripts\activate

# macOS / Linux
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Start the Application
Start both the AI backend server and the frontend dashboard:

**Terminal 1 — Backend API Server:**
```bash
python backend/app.py
```
> Server runs at `http://127.0.0.1:5000`

**Terminal 2 — Frontend Dashboard:**
```bash
python serve.py
```
> Open your browser and navigate to `http://localhost:8000`

---

## 🔌 API Reference

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/` | Backend health & status confirmation |
| `GET` | `/health` | Model status check & loaded weights info |
| `POST` | `/detect-image` | Upload image for YOLOv8 object detection |
| `POST` | `/webcam-detect` | Submit live webcam frame for instant inference |
| `GET` | `/history` | Fetch all historical detection records from SQLite |
| `DELETE` | `/history/<id>` | Delete a specific detection record |
| `GET` | `/uploads/<filename>` | Retrieve saved image snapshot |

---

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).
