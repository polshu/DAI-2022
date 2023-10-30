import { useState, useEffect, useRef } from "react";
import { Text, View, Button, Platform, TextInput } from "react-native";
import * as Device from "expo-device";
import * as Notifications from "expo-notifications";

Notifications.setNotificationHandler({
  handleNotification: async () => ({
    shouldShowAlert: true,
    shouldPlaySound: false,
    shouldSetBadge: false,
  }),
});

export default function App() {
  const [expoPushToken, setExpoPushToken] = useState("");
  const [notification, setNotification] = useState(false);

  const [titleState, setTitle] = useState();
  const [bodyState, setBody] = useState();

  const notificationListener = useRef();
  const responseListener = useRef();

  useEffect(() => {
    registerForPushNotificationsAsync().then((token) =>
      setExpoPushToken(token)
    );

    notificationListener.current =
      Notifications.addNotificationReceivedListener((notification) => {
        setNotification(notification);
      });

    responseListener.current =
      Notifications.addNotificationResponseReceivedListener((response) => {
        console.log(response);
      });

    return () => {
      Notifications.removeNotificationSubscription(
        notificationListener.current
      );
      Notifications.removeNotificationSubscription(responseListener.current);
    };
  }, []);

  function handleTitulo(e) {
    console.log(e);
  }

  return (
    <View
      style={{
        flex: 1,
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <Text> Titulo: </Text>
      <TextInput
        id="tituloInput"
        onChangeText={(text) => setTitle(text)}
        placeholder="Titulo"
        style={{
          height: 40,
          width: "80%",
          paddingLeft: 6,
          borderWidth: 2,
          borderColor: "black",
          margin: 5,
          borderRadius: 20,
        }}
      >
        {" "}
      </TextInput>
      <Text> Contenido: </Text>
      <TextInput
        id="bodyInput"
        onChangeText={(text) => setBody(text)}
        placeholder="Body"
        style={{
          height: 40,
          width: "80%",
          paddingLeft: 6,
          borderWidth: 2,
          borderColor: "black",
          margin: 5,
          borderRadius: 20,
        }}
      ></TextInput>

      <Button
        title="Enviar Notificacion"
        onPress={async () => {
          await schedulePushNotification(titleState, bodyState);
        }}
      />
    </View>
  );
}

async function schedulePushNotification(
  title = "Titulo Vacio",
  body = "Body Vacio"
) {
  await Notifications.scheduleNotificationAsync({
    content: {
      title: title,
      body: body,
      data: { data: "goes here" },
    },
    trigger: { seconds: 2 },
  });
}

async function registerForPushNotificationsAsync() {
  let token;

  if (Platform.OS === "android") {
    await Notifications.setNotificationChannelAsync("default", {
      name: "default",
      importance: Notifications.AndroidImportance.MAX,
      vibrationPattern: [0, 250, 250, 250],
      lightColor: "#FF231F7C",
    });
  }

  if (Device.isDevice) {
    const { status: existingStatus } =
      await Notifications.getPermissionsAsync();
    let finalStatus = existingStatus;
    if (existingStatus !== "granted") {
      const { status } = await Notifications.requestPermissionsAsync();
      finalStatus = status;
    }
    if (finalStatus !== "granted") {
      alert("Failed to get push token for push notification!");
      return;
    }
    token = (await Notifications.getExpoPushTokenAsync()).data;
    console.log(token);
  } else {
    alert("Must use physical device for Push Notifications");
  }

  return token;
}
