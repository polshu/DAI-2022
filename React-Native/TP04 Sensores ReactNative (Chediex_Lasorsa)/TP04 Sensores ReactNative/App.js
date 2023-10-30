import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import Ionicons from 'react-native-vector-icons/Ionicons';
import Accelerometerr from './Components/Accelerometer.js';
import Compass from './Components/Compass.js';
import Barometerr from './Components/Barometer.js';
import LightSensorr from './Components/LigthSensor.js';

const Tab = createBottomTabNavigator();

const App = () => {
  return (
    <NavigationContainer>
      <Tab.Navigator screenOptions={({ route }) => ({
          tabBarIcon: ({ focused, color, size }) => {
            let iconName;

            if (route.name === 'Barometer') {
              iconName = focused ? 'md-barometer' : 'md-barometer-outline';
            } else if (route.name === 'Speedometer') {
              iconName = focused ? 'md-speedometer' : 'md-speedometer-outline';
            }
            else if(route.name === 'Compass'){
              iconName = focused ? 'md-compass' : 'md-compass-outline'
            }
            else if(route.name === 'LigthSensor'){
              iconName = focused ? 'md-light' : 'md-light-outline'
            }
            return <Ionicons name={iconName} size={size} color={color} />;
          },
          tabBarActiveTintColor: 'black',
          tabBarInactiveTintColor: 'gray',
        })}
      >
        <Tab.Screen name="Speedometer" component={Accelerometerr} />
        <Tab.Screen name="Barometer" component={Barometerr}/>
        <Tab.Screen name="Compass" component={Compass}/>
        <Tab.Screen name='LigthSensor' component={LightSensorr}/>
      </Tab.Navigator>
  </NavigationContainer>

  );
};

export default App;