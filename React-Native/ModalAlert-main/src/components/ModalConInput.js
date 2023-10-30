import React, {useState} from 'react';
import {Alert, Modal, StyleSheet, Text, Pressable, View, TextInput} from 'react-native';

const ModalConInput = ({setShowModal2}) => {
  const [nombre, setNombre] = useState("");
  return (
    <View style={styles.centeredView}>
      <Modal
        animationType="slide"
        transparent={true}
        visible={true}
        onRequestClose={() => {
          Alert.alert('Modal has been closed.');
          setShowModal2(false);
        }}>
        <View style={styles.centeredView}>
          <View style={styles.modalView}>
          <TextInput 
              style={styles.inputText1}
              initialValue = ""
              onChangeText={setNombre}
              placeholder="Ingrese su nombre de usuario..."
              value={nombre}
              name="Nombre"
        />
            <Pressable
              style={[styles.button, styles.buttonClose]}
              onPress={() => setShowModal2(false)}>
              <Text style={styles.textStyle}>Cerrar</Text>
            </Pressable>
          </View>
        </View>
      </Modal>
    </View>
  );
};

const styles = StyleSheet.create({
  centeredView: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 22,
  },
  modalView: {
    margin: 15,
    backgroundColor: 'white',
    borderRadius: 20,
    width: 300,
    height: 550,
    padding: 35,
    alignItems: 'center',
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 4,
    elevation: 5,
  },
  button: {
    borderRadius: 20,
    padding: 10,
    elevation: 2,
  },
  /*buttonOpen: {
    backgroundColor: '#F194FF',
  },*/
  buttonClose: {
    backgroundColor: '#2196F3',
  },
  textStyle: {
    color: 'white',
    fontWeight: 'bold',
    textAlign: 'center',
  },
  inputText1:{
    height: 40,
    margin: 12,
    borderWidth: 1,
    padding: 10,
    marginTop: 140
  }
});

export default ModalConInput;