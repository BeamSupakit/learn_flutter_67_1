# 🌊 Flood Warning System for Phuket Municipality

## 📌 Project Title & Description
fccccccc
**ชื่อโครงการ:** ระบบการแจ้งเตือนอุทกภัยจากน้ำท่วมในพื้นที่เทศบาลนครภูเก็ต  

**คำอธิบายโครงการ:**  
โครงการนี้เป็นการพัฒนาระบบแจ้งเตือนอุทกภัยโดยใช้เทคโนโลยี IoT เพื่อตรวจจับระดับน้ำและปริมาณฝนแบบเรียลไทม์ โดยใช้บอร์ด ESP8266 ร่วมกับเซ็นเซอร์วัดระดับน้ำและเซ็นเซอร์วัดปริมาณฝน พร้อมระบบแจ้งเตือนผ่าน LINE Notify และเสียงเตือน เพื่อให้ประชาชนสามารถเตรียมความพร้อมและลดความเสียหายจากอุทกภัยได้อย่างมีประสิทธิภาพ

---

## 🛠 Installation Instructions

### 🔹 1. System Requirements
- Arduino IDE
- บอร์ด ESP8266 (NodeMCU)
- Ultrasonic Sensor (HC-SR04)
- Rain Sensor
- Relay Module
- สัญญาณ WiFi
- LINE Account สำหรับสร้าง LINE Notify Token

---

### 🔹 2. Hardware Installation

1. เชื่อมต่อ Ultrasonic Sensor เข้ากับ ESP8266
2. เชื่อมต่อ Rain Sensor
3. เชื่อมต่อ Relay Module เพื่อควบคุมการจ่ายไฟ
4. ตรวจสอบการต่อสายไฟให้ถูกต้อง
5. เชื่อมต่อ ESP8266 กับ WiFi

---

### 🔹 3. Software Installation

1. ดาวน์โหลดและติดตั้ง **Arduino IDE**
2. ติดตั้ง Board ESP8266 ผ่าน Board Manager
3. ติดตั้งไลบรารีที่จำเป็น เช่น:
   - ESP8266WiFi
   - HTTPClient
4. เขียนโค้ดและอัปโหลดไปยังบอร์ด ESP8266

---

### 🔹 4. Configuration

กำหนดค่าในโค้ด:

```cpp
const char* ssid = "YOUR_WIFI_NAME";
const char* password = "YOUR_WIFI_PASSWORD";
String lineToken = "YOUR_LINE_NOTIFY_TOKEN";