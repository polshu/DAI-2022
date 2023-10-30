import React, { useState, useEffect } from 'react';
import { View, Text, Button, FlatList, StyleSheet, TouchableOpacity, Alert } from 'react-native';
import * as Calendar from 'expo-calendar';

const ViewEventsScreen = ({ navigation }) => {
  const [events, setEvents] = useState([]);

  useEffect(() => {
    const getEvents = async () => {
      const { status } = await Calendar.requestCalendarPermissionsAsync();

      if (status === 'granted') {
        const calendarId = Calendar.DEFAULT;
        const startDate = new Date(); // Puedes personalizar la fecha de inicio según tus necesidades
        const endDate = new Date(new Date().getTime() + 7 * 24 * 60 * 60 * 1000); // 7 días después

        const events = await Calendar.getEventsAsync([calendarId], startDate, endDate);

        setEvents(events);
      }
    };

    getEvents();
  }, []);

  const navigateToAddEvent = () => {
    navigation.navigate('AddEvent');
  };

  const handleDeleteEvent = async (eventId) => {
    try {
      await Calendar.deleteEventAsync(eventId);
      // Actualiza la lista de eventos después de eliminar uno
      setEvents(events.filter(event => event.id !== eventId));
    } catch (error) {
      console.error('Error al eliminar el evento:', error);
      Alert.alert('Error', 'Hubo un problema al eliminar el evento.');
    }
  };

  return (
    <View style={styles.container}>
      <Text style={styles.header}>Eventos del Calendario:</Text>
      <FlatList
        data={events}
        keyExtractor={item => item.id.toString()}
        renderItem={({ item }) => (
          <View style={styles.eventContainer}>
            <Text style={styles.eventTitle}>{item.title}</Text>
            <Text style={styles.eventDate}>
              Fecha: {new Date(item.startDate).toDateString()}
            </Text>
            <TouchableOpacity
              style={styles.deleteButton}
              onPress={() => handleDeleteEvent(item.id)}
            >
              <Text style={styles.deleteButtonText}>Eliminar</Text>
            </TouchableOpacity>
          </View>
        )}
      />
      <TouchableOpacity style={styles.addButton} onPress={navigateToAddEvent}>
        <Text style={styles.buttonText}>Agregar Evento</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
  },
  header: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  eventContainer: {
    borderWidth: 1,
    borderColor: '#ccc',
    borderRadius: 5,
    padding: 10,
    marginBottom: 10,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  eventTitle: {
    fontSize: 16,
    fontWeight: 'bold',
  },
  eventDate: {
    color: '#666',
  },
  addButton: {
    backgroundColor: '#3498db',
    padding: 15,
    borderRadius: 5,
  },
  deleteButton: {
    backgroundColor: '#e74c3c',
    padding: 5,
    borderRadius: 5,
  },
  deleteButtonText: {
    color: 'white',
  },
  buttonText: {
    color: 'white',
    textAlign: 'center',
  },
});

export default ViewEventsScreen;
