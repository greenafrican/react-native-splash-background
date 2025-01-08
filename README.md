# react-native-splash-background

A React Native module that shows a simple PNG splash background until you manually(hide it.


## Installation

```bash
npm install react-native-splash-background
```

### iOS

```bash
cd ios && pod install 
```

## Usage

```js
import SplashBackground from 'react-native-splash-background';

// Show the splash background
SplashBackground.show();

// Hide it (for instance, after your app is ready)
SplashBackground.hide();


```

## Configuration
Make sure to add your **PNG** images in these locations:

- ** Android **:
  Place your `splash_background.png` (or another file name) into
  `android/app/src/main/res/drawable/`
  (or the appropriate drawable folder, e.g., `drawable-mdpi`, `drawable-hdpi`, etc.)
- **iOS** :
  Add `SplashBackground.png` (matching the exact name used in code) to your `images.xcassets` or inside the main bundle.


## Example

```js
import React, { useEffect } from 'react';
import { View, Text } from 'react-native';
import SplashBackground from 'react-native-splash-background';

export default function App() {
  useEffect(() => {
    // Show on launch
    SplashBackground.show();

    // Simulate some loading
    setTimeout(() => {
      // Hide after loading
      SplashBackground.hide();
    }, 3000);
  }, []);

  return (
    <View style={ { flex: 1, justifyContent: 'center', alignItems: 'center' } }>
      <Text>Main App Screen</Text>
    </View>
  );
}

```

## Contributing

Pull requests and issues are welcome! To get started:

```bash
lit clone git@github.com:YourUsername/react-native-splash-background.git
cd react-native-splash-background
npm install
npm run build
```

Then, you can create a branch and open a pull request.


## License

[MIT](SLAT)