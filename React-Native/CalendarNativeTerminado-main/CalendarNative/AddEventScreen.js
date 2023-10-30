import React, { useState } from 'react';
import { View, Text, Button, TextInput, Alert, TouchableOpacity, StyleSheet } from 'react-native';
import DateTimePicker from '@react-native-community/datetimepicker';
import * as Calendar from 'expo-calendar';

const AddEventScreen = ({ navigation }) => {
  const [title, setTitle] = useState('');
  const [startDate, setStartDate] = useState(new Date());
  const [endDate, setEndDate] = useState(new Date());
  const [showStartDatePicker, setShowStartDatePicker] = useState(false);
  const [showEndDatePicker, setShowEndDatePicker] = useState(false);
  const [calendarName, setCalendarName] = useState('');

  const addEventToIOSCalendar = async () => {
    const { status } = await Calendar.requestCalendarPermissionsAsync();

    if (status === 'granted') {
      const calendars = await Calendar.getCalendarsAsync();
      const selectedCalendar = calendars.find(calendar => calendar.title === calendarName);

      if (selectedCalendar) {
        const eventDetails = {
          title,
          startDate,
          endDate,
          calendarId: selectedCalendar.id,
        };

        try {
          await Calendar.createEventAsync(selectedCalendar.id, eventDetails);
          Alert.alert('Éxito', 'El evento se ha agregado al calendario correctamente.');
        } catch (error) {
          console.error('Error al agregar el evento al calendario :', error);
          Alert.alert('Error', 'Hubo un problema al agregar el evento al calendario.');
        }
      } else {
        Alert.alert('Error', `No se encontró el calendario "${calendarName}" en tu dispositivo.`);
      }
    } else {
      Alert.alert('Error', 'No se concedieron los permisos de calendario.');
    }
  };

  const showStartDatePickerModal = () => {
    setShowStartDatePicker(true);
  };

  const showEndDatePickerModal = () => {
    setShowEndDatePicker(true);
  };

  const onStartDateChange = (event, selectedDate) => {
    const currentDate = selectedDate || startDate;
    setShowStartDatePicker(Platform.OS === 'ios'); // Si es iOS, muestra un modal
    setStartDate(currentDate);
  };

  const onEndDateChange = (event, selectedDate) => {
    const currentDate = selectedDate || endDate;
    setShowEndDatePicker(Platform.OS === 'ios'); // Si es iOS, muestra un modal
    setEndDate(currentDate);
  };

  const navigateToViewEvents = () => {
    navigation.navigate('ViewEvents');
  };

  return (
    <View style={styles.container}>
      <TextInput
        style={styles.input}
        placeholder="Nombre del calendario"
        value={calendarName}
        onChangeText={text => setCalendarName(text)}
      />
      <TextInput
        style={styles.input}
        placeholder="Título del evento"
        value={title}
        onChangeText={text => setTitle(text)}
      />
      <TouchableOpacity style={styles.button} onPress={showStartDatePickerModal}>
        <Text style={styles.buttonText}>Seleccionar Fecha de Inicio</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.button} onPress={showEndDatePickerModal}>
        <Text style={styles.buttonText}>Seleccionar Fecha de Fin</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.addButton} onPress={addEventToIOSCalendar}>
        <Text style={styles.buttonText}>Agregar Evento al Calendario</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.viewButton} onPress={navigateToViewEvents}>
        <Text style={styles.buttonText}>Ver Eventos</Text>
      </TouchableOpacity>
      {showStartDatePicker && (
        <DateTimePicker
          value={startDate}
          mode="datetime"
          is24Hour={true}
          display="default"
          onChange={onStartDateChange}
        />
      )}
      {showEndDatePicker && (
        <DateTimePicker
          value={endDate}
          mode="datetime"
          is24Hour={true}
          display="default"
          onChange={onEndDateChange}
        />
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
  },
  input: {
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    marginBottom: 15,
    padding: 10,
  },
  button: {
    backgroundColor: '#3498db',
    padding: 15,
    borderRadius: 5,
    marginBottom: 10,
  },
  addButton: {
    backgroundColor: '#27ae60',
    padding: 15,
    borderRadius: 5,
    marginBottom: 10,
  },
  viewButton: {
    backgroundColor: '#e74c3c',
    padding: 15,
    borderRadius: 5,
  },
  buttonText: {
    color: 'white',
    textAlign: 'center',
  },
});

export default AddEventScreen;
