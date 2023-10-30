import React from 'react';
import { createStackNavigator } from '@react-navigation/stack';
import { NavigationContainer } from '@react-navigation/native';

import AddEventScreen from './AddEventScreen';
import ViewEventsScreen from './ViewEventsScreen';

const Stack = createStackNavigator();

const AppNavigator = () => {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="AddEvent">
        <Stack.Screen name="AddEvent" component={AddEventScreen} />
        <Stack.Screen name="ViewEvents" component={ViewEventsScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
};

export default AppNavigator;
