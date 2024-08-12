import React from 'react';
import { View, Text, StyleSheet, Image } from 'react-native';

import EventoImage from './../../assets/eventos/evento300.png'

const EventosDetalle = ({ route }) => {
  const { evento } = route.params;

  return (
    <View style={styles.container}>
      <Image source={EventoImage} style={styles.imagen} />
      <Text style={styles.name}>{evento.name}</Text>
      <Text style={styles.description}>{evento.description}</Text>
      <Text style={styles.start_date}>{evento.start_date}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#fff',
  },
  imagen: {
    width: 300,
    height: 300,
    borderRadius: 75,
    marginBottom: 20,
  },
  name: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  description: {
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 10,
  },
  start_date: {
    fontSize: 14,
    color: '#666',
  },
});

export default EventosDetalle;