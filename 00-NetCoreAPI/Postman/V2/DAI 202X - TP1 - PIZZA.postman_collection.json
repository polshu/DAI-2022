{
	"info": {
		"_postman_id": "0636f347-3a3d-4f0c-8974-b4e99787b752",
		"name": "DAI 202X - TP1 - PIZZA",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
	},
	"item": [
		{
			"name": "V1",
			"item": [
				{
					"name": "Pizzas - GetAll",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - GetById",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas/3",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"3"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - Create",
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"nombre\" : \"Pizzaiola\",\r\n    \"libreGluten\": false,\r\n    \"importe\": 2050.50,\r\n    \"descripcion\": \"pizza con queso y rodajas de tomate y ajo.\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:5000/api/pizzas/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								""
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - Update",
					"protocolProfileBehavior": {
						"disabledSystemHeaders": {
							"content-type": true
						}
					},
					"request": {
						"method": "PUT",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"id\": 5,\r\n    \"nombre\": \"Napolitana\",\r\n    \"libreGluten\": false,\r\n    \"importe\": 1850.50,\r\n    \"descripcion\": \"Salsa de tomate, queso mozzarella, anchoas, orégano, alcaparras y aceite de oliva. Un corcho para cuando vas al excusado..\"\r\n}"
						},
						"url": {
							"raw": "http://localhost:5000/api/pizzas/5",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"5"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - DeleteById",
					"request": {
						"method": "DELETE",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas/5",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"5"
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "V2",
			"item": [
				{
					"name": "Pizzas - GetAll",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - GetById",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas/3",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"3"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - Create",
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "token",
								"value": "64e3acf0-6113-4d5d-85e8-c6d8c12ddbdc",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"nombre\" : \"Pizzaiola\",\r\n    \"libreGluten\": false,\r\n    \"importe\": 2050.50,\r\n    \"descripcion\": \"pizza con queso y rodajas de tomate y ajo.\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:5000/api/pizzas/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								""
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - Update",
					"protocolProfileBehavior": {
						"disabledSystemHeaders": {
							"content-type": true
						}
					},
					"request": {
						"method": "PUT",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "token",
								"value": "64e3acf0-6113-4d5d-85e8-c6d8c12ddbdc",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"id\": 5,\r\n    \"nombre\": \"Napolitana\",\r\n    \"libreGluten\": false,\r\n    \"importe\": 1850.50,\r\n    \"descripcion\": \"Salsa de tomate, queso mozzarella, anchoas, orégano, alcaparras y aceite de oliva. Un corcho para cuando vas al excusado..\"\r\n}"
						},
						"url": {
							"raw": "http://localhost:5000/api/pizzas/5",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"5"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - DeleteById",
					"request": {
						"method": "DELETE",
						"header": [
							{
								"key": "token",
								"value": "64e3acf0-6113-4d5d-85e8-c6d8c12ddbdc",
								"type": "text"
							}
						],
						"url": {
							"raw": "http://localhost:5000/api/pizzas/5",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"5"
							]
						}
					},
					"response": []
				},
				{
					"name": "Usuarios - Login",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									"var res = pm.response.json();\r",
									"pm.environment.set('token', res.token);"
								],
								"type": "text/javascript"
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"username\": \"CatAlt\",\r\n    \"password\": \"3CA\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:5000/api/usuarios/login",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"usuarios",
								"login"
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "V2 (con variables de POSTMAN)",
			"item": [
				{
					"name": "Pizzas - GetAll",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - GetById",
					"request": {
						"method": "GET",
						"header": [],
						"url": {
							"raw": "http://localhost:5000/api/pizzas/3",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"3"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - Create",
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "token",
								"value": "{{token}}",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"nombre\" : \"Pizzaiola\",\r\n    \"libreGluten\": false,\r\n    \"importe\": 2050.50,\r\n    \"descripcion\": \"pizza con queso y rodajas de tomate y ajo.\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:5000/api/pizzas/",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								""
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - Update",
					"protocolProfileBehavior": {
						"disabledSystemHeaders": {
							"content-type": true
						}
					},
					"request": {
						"method": "PUT",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "token",
								"value": "{{token}}",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"id\": 5,\r\n    \"nombre\": \"Napolitana\",\r\n    \"libreGluten\": false,\r\n    \"importe\": 1850.50,\r\n    \"descripcion\": \"Salsa de tomate, queso mozzarella, anchoas, orégano, alcaparras y aceite de oliva. Un corcho para cuando vas al excusado..\"\r\n}"
						},
						"url": {
							"raw": "http://localhost:5000/api/pizzas/5",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"5"
							]
						}
					},
					"response": []
				},
				{
					"name": "Pizzas - DeleteById",
					"request": {
						"method": "DELETE",
						"header": [
							{
								"key": "token",
								"value": "64e3acf0-6113-4d5d-85e8-c6d8c12ddbdc",
								"type": "text"
							}
						],
						"url": {
							"raw": "http://localhost:5000/api/pizzas/5?token={{token}}",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"pizzas",
								"5"
							],
							"query": [
								{
									"key": "token",
									"value": "{{token}}"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Usuarios - Login",
					"event": [
						{
							"listen": "test",
							"script": {
								"exec": [
									"var res = pm.response.json();\r",
									"pm.environment.set('token', res.token);"
								],
								"type": "text/javascript"
							}
						}
					],
					"request": {
						"method": "POST",
						"header": [],
						"body": {
							"mode": "raw",
							"raw": "{\r\n    \"username\": \"CatAlt\",\r\n    \"password\": \"3CA\"\r\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:5000/api/usuarios/login",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "5000",
							"path": [
								"api",
								"usuarios",
								"login"
							]
						}
					},
					"response": []
				}
			]
		}
	]
}