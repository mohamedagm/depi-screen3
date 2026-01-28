# BMI Calculator App 🏋️‍♂️

A modern and elegant Body Mass Index (BMI) calculator built with Flutter featuring a sleek dark theme design.

## 📱 Screenshots

<div align="center">
  <img  width="300" alt="BMI Calculator Screen" src="https://github.com/user-attachments/assets/764cebe3-b108-4052-8e13-f118973c0173" />
<img  width="300" alt="Result Screen" src="https://github.com/user-attachments/assets/cb5e3616-31fc-4e0b-afc1-8c5df17be067" />
</div>

## ✨ Features

- 🎨 **Modern UI Design**: Attractive dark-themed interface with smooth animations
- ⚡ **Easy to Use**: Interactive and seamless data input
- 📊 **Accurate Calculation**: Calculates BMI based on height and weight
- 🎯 **Clear Results**: Displays results with weight classification and health advice
- 👫 **Gender Selection**: Choose between male and female
- 📏 **Height Control**: Slider to select height from 100 to 220 cm
- ⚖️ **Weight Control**: + and - buttons to adjust weight
- 🎂 **Age Control**: + and - buttons to adjust age

## 🎯 How It Works

### BMI Calculation Formula:
```
BMI = Weight (kg) ÷ (Height (m))²
```

### BMI Categories:
- **Below 18.5**: Underweight
- **18.5 - 24.9**: Normal
- **25 - 29.9**: Overweight
- **30 and above**: Obese

## 🛠️ Technologies Used

- **Flutter**: Main framework
- **Dart**: Programming language
- **Material Design**: UI components and design

## 🎨 Color Palette

```dart
Background:       #0F1220
Container:        #1C1F32
Primary:          #E91E63
Success:          #4CAF50
Text:             #FFFFFF
Secondary Text:   #9E9E9E
```

## 📦 Main Components

### 1. BmiView (Main Screen)
- Gender selection
- Height slider
- Weight and age controls
- Calculate button

### 2. ResultView (Results Screen)
- BMI value display
- Weight classification
- Health message
- Recalculate button

### 3. GenderWidget (Gender Widget)
- Reusable component
- Color changes on selection
- GestureDetector support

## 🔮 Future Enhancements

- [ ] Add history tracking
- [ ] Store previous calculations
- [ ] Add BMI chart visualization
- [ ] Support for different measurement units (lbs, inches)
- [ ] Add more detailed health recommendations
- [ ] Implement animations for screen transitions
- [ ] Add haptic feedback
- [ ] Support for multiple languages


**Made with ❤️ using Flutter**
