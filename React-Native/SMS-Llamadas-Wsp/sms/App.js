import { StyleSheet, Text, View, Linking, TouchableOpacity, Platform, TextInput, Image } from 'react-native';
import { useState } from 'react';
import Logo from "../sms/assets/image.jpg" 

export default function App() {

  const [texto, setTexto] = useState()

  const llamarNumero = ({texto}) => {
    const phoneNumber = texto;
    Linking.openURL(`tel:${phoneNumber}`)
  }

  const mandarSMS = ({texto}) => {
    const url = (Platform.OS === 'android')
    ? `sms:${texto}?body=HOLA`
    : `sms:${texto}`
    Linking.canOpenURL(url).then(supported => {
      if (!supported) {
        console.log('Unsupported url: ' + url)
      } else {
        return Linking.openURL(url)
      }
    }).catch(err => console.error('An error occurred', err))
  }

  const mandarWhatsapp = ({texto}) => {
    const whatsappNo = "549" + texto
    const whatsappMsg = "hola"
    Linking.openURL(`whatsapp://send?phone=${whatsappNo}&text=${whatsappMsg}`);
  }

  return (
    <View style={styles.container}>
      <Image
        style={styles.image} 
        source={Logo} 
      />
      <Text style={styles.textoPrincipal}>Ingrese el numero</Text>

      <TextInput onChangeText={setTexto} value={texto} style={styles.input} keyboardType="numeric"/>

      <Text style={styles.textoSecundario}>LLAMADAS TELEFONICAS:</Text>

      <TouchableOpacity onPress={() => llamarNumero({texto})} style={styles.boton}>
        <Text style={styles.textoBoton}>Llamar</Text>
      </TouchableOpacity>

      <Text style={styles.textoSecundario}>MANDAR SMS:</Text>

      <TouchableOpacity onPress={() => mandarSMS({texto})} style={styles.boton}>
        <Text style={styles.textoBoton}>Textear</Text>
      </TouchableOpacity>

      <Text style={styles.textoSecundario}>MANDAR WHATSAPP:</Text>

      <TouchableOpacity onPress={() => mandarWhatsapp({texto})} style={styles.boton}>
        <Text style={styles.textoBoton}>Enviar</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'green',
    alignItems: 'center',
    justifyContent: 'center',
    height: '100%',
  },
  input: {
    backgroundColor: 'lightgray',
    borderRadius: 23,
    paddingVertical: 2,
    paddingHorizontal: 10,
    marginHorizontal: 55,
    borderWidth: 2,
    marginTop: 8,
    justifyContent: 'center',
    borderColor: '#00716F'
  },
  image: {
    width: '100%',
    height: '40%'
  },
  textoPrincipal: {
    fontSize: 20,
    alignSelf: 'center'
  },
  textoSecundario: {
    marginHorizontal: 50,
    textAlign: 'center',
    marginTop: 5,
  },
  boton: {
    marginHorizontal: 55,
    marginTop: 5,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#00716F',
    paddingVertical: 8,
    borderRadius: 23
  },
  textoBoton: {
    color: 'white',
  }
});
