import React, { useState } from 'react';
import {
  SafeAreaView,
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  TextInput,
  Clipboard
} from 'react-native';


const App = () => {
  const [copiedText, setCopiedText] = useState('');
  const [inputText, setInputText] = useState('');

  const copyToClipboard = () => {
    Clipboard.setString(inputText);
    alert('Texto copiado al clipboard');
  };


  const fetchCopiedText = async () => {
    const text = await Clipboard.getString();
    setCopiedText(text);
  };

  return (
    <SafeAreaView style={{ flex: 1 }}>
      <View style={styles.container}>
        <TextInput
          style={styles.input}
          placeholder="Ingresa un texto aquí"
          onChangeText={(text) => setInputText(text)}
          value={inputText}
        />
        <View style={styles.buttonContainer}>
          <TouchableOpacity style={styles.button} onPress={copyToClipboard}>
            <Text>Copiar al clipboard</Text>
          </TouchableOpacity>
          <TouchableOpacity style={styles.button} onPress={fetchCopiedText}>
            <Text>Ver texto copiado</Text>
          </TouchableOpacity>
        </View>
        <Text style={styles.copiedText}>{copiedText}</Text>
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  input: {
    width: 300,
    height: 40,
    borderWidth: 1,
    borderColor: 'gray',
    marginBottom: 10,
    paddingLeft: 10,
  },
  buttonContainer: {
    flexDirection: 'row',
  },
  button: {
    backgroundColor: 'lightblue',
    padding: 10,
    margin: 5,
    borderRadius: 5,
  },
  copiedText: {
    marginTop: 10,
    color: 'red',
  },
});

export default App;
