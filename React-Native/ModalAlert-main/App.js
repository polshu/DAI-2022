import { StatusBar } from 'expo-status-bar';
import React, { useState } from 'react';
import { Alert, Pressable, SafeAreaView, StyleSheet, Text, TouchableOpacity, View } from 'react-native';
import Modals from './src/components/Modals';
import ModalConSwitch from './src/components/ModalConInput';
import Modal3 from './src/components/Modal3';


const  App = () => {
  const [showModal, setShowModal] = useState(false);
  const [showModal2, setShowModal2] = useState(false);
  const [showModal3, setShowModal3] = useState(false);


  const abrirModal = async () => {
    console.log(1)
    setShowModal(true);
    console.log(showModal)
  }
  const abrirModal2 = async () => {
    console.log(1)
    setShowModal2(true);
    console.log(showModal)
  }
  const abrirModal3 = async () => {
    console.log(1)
    setShowModal3(true);
    console.log(showModal)
  }

  const mostrarAlert = async () => {
    Alert.alert("Aqui va el titulo", "Aqui va la descripción")
  }

  return (
    <SafeAreaView>
      <TouchableOpacity onPress={() => abrirModal()} style={styles.Boton1}>
        <Text>Press Me</Text> 
      </TouchableOpacity>
      {showModal ? (
      <>
      <Modals setShowModal={setShowModal}/>
      {/* <Text>Messi</Text> */}
      </>
      ): (
        <></>
      )}
{/* modal2 */}
      <TouchableOpacity style={styles.Boton1} onPress={() => abrirModal2()} >
        <Text>Modal con switch</Text> 
      </TouchableOpacity>
      {showModal2 ? (
      <>
      <ModalConSwitch setShowModal2={setShowModal2}/>
      </>
      ): (
        <></>
      )}
      {/* modal3 */}
      <TouchableOpacity style={styles.Boton1} onPress={() => abrirModal3()}>
        <Text>Modal 3</Text> 
      </TouchableOpacity>
      {showModal3 ? (
      <>
      <Modal3 setShowModal3={setShowModal3}/>
      </>
      ): (
        <></>
      )}

      <TouchableOpacity style={styles.Boton2} onPress={() => mostrarAlert()}>
        <Text>Alert</Text>
      </TouchableOpacity>
    </SafeAreaView>
    
  );
}
export default  App;
const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  Boton1:{
    marginTop: 80,
    alignItems: 'center',
    borderRadius: 15,
    backgroundColor: '#AEDD2B',
    paddingHorizontal: 1, 
    paddingVertical: 20,
  },
  Boton2:{
    marginTop: 80,
    alignItems: 'center',
       borderRadius: 15,
    backgroundColor: 'red',
    paddingHorizontal: 1,
    paddingVertical: 20,
  },

});
