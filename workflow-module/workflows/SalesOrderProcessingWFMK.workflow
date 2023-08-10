{
	"contents": {
		"1364f31d-5f34-407b-8f7b-964bbd5c5994": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowmk.salesorderprocessingwfmk",
			"subject": "SalesOrderProcessingWFMK",
			"name": "SalesOrderProcessingWFMK",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"730587b3-922c-4384-84a2-8941b40e11cc": {
					"name": "Approval Form"
				},
				"9805d212-76c0-493c-b058-87d269f2b251": {
					"name": "ExclusiveGateway1"
				},
				"3ad799fc-348a-4fc9-a308-56eab321adeb": {
					"name": "ScriptTask1"
				},
				"ece4018e-edee-4047-9b48-951994288d6e": {
					"name": "ServiceTask1"
				},
				"b2d88176-e3fb-43ef-bae9-ccf7961a824e": {
					"name": "Item Details User Task"
				},
				"a77b2f82-b4a0-4d30-89ea-87bb9913b5ed": {
					"name": "ExclusiveGateway2"
				},
				"9789cbd6-fa71-4aba-a947-9af5212893a6": {
					"name": "ScriptTask2"
				},
				"542ad400-cb31-44dc-817a-b9e5416b8db0": {
					"name": "ServiceTask2"
				},
				"699a581b-df69-4d61-8bad-0083fece91b7": {
					"name": "MailTask1"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"a0d5c1ff-76f8-4e7e-af7a-2c196ca2ab60": {
					"name": "SequenceFlow2"
				},
				"24b1b2b3-5b6f-4b87-9f51-c539828a9be3": {
					"name": "SequenceFlow4"
				},
				"32a3f120-bdc4-4b7d-9c48-c85bc597349c": {
					"name": "SequenceFlow5"
				},
				"ef25f433-7544-4b52-90a5-751c792351f3": {
					"name": "SequenceFlow6"
				},
				"f4839cdf-a7d7-40fa-9d85-a16b33a66d38": {
					"name": "SequenceFlow8"
				},
				"f7b52c4b-d525-498a-88b1-5378613e9a46": {
					"name": "SequenceFlow10"
				},
				"eb4f1069-21ee-4da5-991e-ff58dba53c44": {
					"name": "SequenceFlow12"
				},
				"0735383e-7f8d-46aa-a7ed-c4b1f934be29": {
					"name": "SequenceFlow13"
				},
				"cf077855-14d7-4835-8260-cac30a78d735": {
					"name": "SequenceFlow14"
				},
				"8a03d62e-65fc-411e-b7bd-2a7dbd2db4f9": {
					"name": "SequenceFlow16"
				},
				"0361d254-2dc7-4244-8d79-649aba1971bf": {
					"name": "SequenceFlow18"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"16b907aa-ce83-4964-b1e9-b73e4dc85796": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"730587b3-922c-4384-84a2-8941b40e11cc": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval Form",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "maria.kolyda@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWFMK/ApprovalFormMK.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalformmk"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Form"
		},
		"9805d212-76c0-493c-b058-87d269f2b251": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "0361d254-2dc7-4244-8d79-649aba1971bf"
		},
		"3ad799fc-348a-4fc9-a308-56eab321adeb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFMK/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"ece4018e-edee-4047-9b48-951994288d6e": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderHeader.request}",
			"responseVariable": "${context.SalesOrderHeader.response}",
			"headers": [{
				"name": "Content-Type",
				"value": "application/json"
			}, {
				"name": "Accept",
				"value": "application/json"
			}],
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"b2d88176-e3fb-43ef-bae9-ccf7961a824e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Sales Order Number",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "maria.kolyda@consolut.com",
			"formReference": "/forms/SalesOrderProcessingWFMK/approvalItemDetails.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalitemdetails"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Item Details User Task"
		},
		"a77b2f82-b4a0-4d30-89ea-87bb9913b5ed": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "f7b52c4b-d525-498a-88b1-5378613e9a46"
		},
		"9789cbd6-fa71-4aba-a947-9af5212893a6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFMK/ItemDetails.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"542ad400-cb31-44dc-817a-b9e5416b8db0": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "JuniorsTrainingHTTP",
			"destinationSource": "consumer",
			"path": "/A_SalesOrder('SalesOrder')/to_Item",
			"httpMethod": "POST",
			"xsrfPath": "/$metadata?sap-client=100",
			"requestVariable": "${context.SalesOrderItem.request}",
			"responseVariable": "${context.SalesOrderItem.response}",
			"headers": [{
				"name": "Accept",
				"value": "application/json"
			}, {
				"name": "Content-Type",
				"value": "application/json"
			}],
			"id": "servicetask2",
			"name": "ServiceTask2"
		},
		"699a581b-df69-4d61-8bad-0083fece91b7": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "302a1637-a130-4540-84b2-c06a73fa7609"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "730587b3-922c-4384-84a2-8941b40e11cc"
		},
		"a0d5c1ff-76f8-4e7e-af7a-2c196ca2ab60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "730587b3-922c-4384-84a2-8941b40e11cc",
			"targetRef": "9805d212-76c0-493c-b058-87d269f2b251"
		},
		"24b1b2b3-5b6f-4b87-9f51-c539828a9be3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "3ad799fc-348a-4fc9-a308-56eab321adeb",
			"targetRef": "ece4018e-edee-4047-9b48-951994288d6e"
		},
		"32a3f120-bdc4-4b7d-9c48-c85bc597349c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"decline\" }",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "9805d212-76c0-493c-b058-87d269f2b251",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ef25f433-7544-4b52-90a5-751c792351f3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "ece4018e-edee-4047-9b48-951994288d6e",
			"targetRef": "b2d88176-e3fb-43ef-bae9-ccf7961a824e"
		},
		"f4839cdf-a7d7-40fa-9d85-a16b33a66d38": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "b2d88176-e3fb-43ef-bae9-ccf7961a824e",
			"targetRef": "a77b2f82-b4a0-4d30-89ea-87bb9913b5ed"
		},
		"f7b52c4b-d525-498a-88b1-5378613e9a46": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "a77b2f82-b4a0-4d30-89ea-87bb9913b5ed",
			"targetRef": "9789cbd6-fa71-4aba-a947-9af5212893a6"
		},
		"eb4f1069-21ee-4da5-991e-ff58dba53c44": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "9789cbd6-fa71-4aba-a947-9af5212893a6",
			"targetRef": "542ad400-cb31-44dc-817a-b9e5416b8db0"
		},
		"0735383e-7f8d-46aa-a7ed-c4b1f934be29": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "542ad400-cb31-44dc-817a-b9e5416b8db0",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"cf077855-14d7-4835-8260-cac30a78d735": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision == \"decline\" }",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "a77b2f82-b4a0-4d30-89ea-87bb9913b5ed",
			"targetRef": "699a581b-df69-4d61-8bad-0083fece91b7"
		},
		"8a03d62e-65fc-411e-b7bd-2a7dbd2db4f9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "699a581b-df69-4d61-8bad-0083fece91b7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"0361d254-2dc7-4244-8d79-649aba1971bf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "9805d212-76c0-493c-b058-87d269f2b251",
			"targetRef": "3ad799fc-348a-4fc9-a308-56eab321adeb"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"42ea5de3-7d9c-421f-850f-6bc7e238b5df": {},
				"4b77b78b-3d80-4674-a53f-39634c7eff4a": {},
				"bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd": {},
				"695c825d-7430-4592-83e3-7f4232298a82": {},
				"25d8f3ea-68ef-4d2c-ae45-12fc985d80e7": {},
				"db537dca-427b-475c-a3c8-b8f61b090599": {},
				"0a9e74a7-308c-4585-a3b6-00e0447a17fa": {},
				"cc7648f3-62ca-4f3a-bc9e-aa7c1d2bc7ba": {},
				"fb44e34d-0a82-4cac-b6fe-09641390b649": {},
				"ac95c915-e1b8-473a-b113-8b9362c3f6d2": {},
				"7b55ea8f-128e-495b-acc6-f1ef33088d2b": {},
				"34960251-ff3d-42c7-b374-12f944f7ead2": {},
				"dc3e1b53-c989-4d06-98ce-f2d6e187a232": {},
				"36a7dd72-799b-46f7-8229-d572d84f5a5d": {},
				"b54fd87f-8946-4bac-939d-c7e04d2b126b": {},
				"c5760d91-60c0-4e67-9afb-fdb1c3e1c87f": {},
				"0a2352bb-5d4a-4ce1-843c-4afd286f27f3": {},
				"ec0e54a6-2e9a-44ba-be7e-67fe1082f264": {},
				"35caec8e-ad37-46f7-8c89-bf4821eb0f48": {},
				"0abdfda9-d6e0-4e29-bc60-179e42e0d2d4": {}
			}
		},
		"16b907aa-ce83-4964-b1e9-b73e4dc85796": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWFMK/WorkflowInput.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 107,
			"y": 70,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1195,
			"y": 84,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "123,86 240,86",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "42ea5de3-7d9c-421f-850f-6bc7e238b5df",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"42ea5de3-7d9c-421f-850f-6bc7e238b5df": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 190,
			"y": 56,
			"width": 100,
			"height": 60,
			"object": "730587b3-922c-4384-84a2-8941b40e11cc"
		},
		"4b77b78b-3d80-4674-a53f-39634c7eff4a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "240,86 357,86",
			"sourceSymbol": "42ea5de3-7d9c-421f-850f-6bc7e238b5df",
			"targetSymbol": "bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd",
			"object": "a0d5c1ff-76f8-4e7e-af7a-2c196ca2ab60"
		},
		"bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 336,
			"y": 65,
			"object": "9805d212-76c0-493c-b058-87d269f2b251"
		},
		"695c825d-7430-4592-83e3-7f4232298a82": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 443,
			"y": -28.75,
			"width": 100,
			"height": 60,
			"object": "3ad799fc-348a-4fc9-a308-56eab321adeb"
		},
		"25d8f3ea-68ef-4d2c-ae45-12fc985d80e7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "493,1.0625 621.25,1.0625",
			"sourceSymbol": "695c825d-7430-4592-83e3-7f4232298a82",
			"targetSymbol": "0a9e74a7-308c-4585-a3b6-00e0447a17fa",
			"object": "24b1b2b3-5b6f-4b87-9f51-c539828a9be3"
		},
		"db537dca-427b-475c-a3c8-b8f61b090599": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "362,84 362,200 1209,200 1209,103",
			"sourceSymbol": "bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "32a3f120-bdc4-4b7d-9c48-c85bc597349c"
		},
		"0a9e74a7-308c-4585-a3b6-00e0447a17fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 571.25,
			"y": -29.125,
			"width": 100,
			"height": 60,
			"object": "ece4018e-edee-4047-9b48-951994288d6e"
		},
		"cc7648f3-62ca-4f3a-bc9e-aa7c1d2bc7ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "621.25,0.90625 759.5,0.90625",
			"sourceSymbol": "0a9e74a7-308c-4585-a3b6-00e0447a17fa",
			"targetSymbol": "fb44e34d-0a82-4cac-b6fe-09641390b649",
			"object": "ef25f433-7544-4b52-90a5-751c792351f3"
		},
		"fb44e34d-0a82-4cac-b6fe-09641390b649": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 709.5,
			"y": -29.0625,
			"width": 100,
			"height": 60,
			"object": "b2d88176-e3fb-43ef-bae9-ccf7961a824e"
		},
		"ac95c915-e1b8-473a-b113-8b9362c3f6d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "759.5,0.96875 870,0.96875",
			"sourceSymbol": "fb44e34d-0a82-4cac-b6fe-09641390b649",
			"targetSymbol": "7b55ea8f-128e-495b-acc6-f1ef33088d2b",
			"object": "f4839cdf-a7d7-40fa-9d85-a16b33a66d38"
		},
		"7b55ea8f-128e-495b-acc6-f1ef33088d2b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 849,
			"y": -20,
			"object": "a77b2f82-b4a0-4d30-89ea-87bb9913b5ed"
		},
		"34960251-ff3d-42c7-b374-12f944f7ead2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 908,
			"y": -110,
			"width": 100,
			"height": 60,
			"object": "9789cbd6-fa71-4aba-a947-9af5212893a6"
		},
		"dc3e1b53-c989-4d06-98ce-f2d6e187a232": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "869,1 869,-80 958,-80",
			"sourceSymbol": "7b55ea8f-128e-495b-acc6-f1ef33088d2b",
			"targetSymbol": "34960251-ff3d-42c7-b374-12f944f7ead2",
			"object": "f7b52c4b-d525-498a-88b1-5378613e9a46"
		},
		"36a7dd72-799b-46f7-8229-d572d84f5a5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "958,-80 1095.25,-80",
			"sourceSymbol": "34960251-ff3d-42c7-b374-12f944f7ead2",
			"targetSymbol": "b54fd87f-8946-4bac-939d-c7e04d2b126b",
			"object": "eb4f1069-21ee-4da5-991e-ff58dba53c44"
		},
		"b54fd87f-8946-4bac-939d-c7e04d2b126b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1045.25,
			"y": -110,
			"width": 100,
			"height": 60,
			"object": "542ad400-cb31-44dc-817a-b9e5416b8db0"
		},
		"c5760d91-60c0-4e67-9afb-fdb1c3e1c87f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1095.25,-80 1213.25,-80 1213.25,101.5",
			"sourceSymbol": "b54fd87f-8946-4bac-939d-c7e04d2b126b",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "0735383e-7f8d-46aa-a7ed-c4b1f934be29"
		},
		"0a2352bb-5d4a-4ce1-843c-4afd286f27f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "868,1 868,99.75 1038.75,99.75",
			"sourceSymbol": "7b55ea8f-128e-495b-acc6-f1ef33088d2b",
			"targetSymbol": "ec0e54a6-2e9a-44ba-be7e-67fe1082f264",
			"object": "cf077855-14d7-4835-8260-cac30a78d735"
		},
		"ec0e54a6-2e9a-44ba-be7e-67fe1082f264": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 988.75,
			"y": 69.75,
			"width": 100,
			"height": 60,
			"object": "699a581b-df69-4d61-8bad-0083fece91b7"
		},
		"35caec8e-ad37-46f7-8c89-bf4821eb0f48": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1038.75,100.625 1212.5,100.625",
			"sourceSymbol": "ec0e54a6-2e9a-44ba-be7e-67fe1082f264",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "8a03d62e-65fc-411e-b7bd-2a7dbd2db4f9"
		},
		"0abdfda9-d6e0-4e29-bc60-179e42e0d2d4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "352.5,86 352.5,1.25 495.5,1.25",
			"sourceSymbol": "bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd",
			"targetSymbol": "695c825d-7430-4592-83e3-7f4232298a82",
			"object": "0361d254-2dc7-4244-8d79-649aba1971bf"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 6,
			"sequenceflow": 21,
			"startevent": 1,
			"endevent": 1,
			"usertask": 4,
			"servicetask": 2,
			"scripttask": 2,
			"mailtask": 6,
			"exclusivegateway": 2
		},
		"302a1637-a130-4540-84b2-c06a73fa7609": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "maria.kolyda@consolut.com",
			"subject": "User rejection",
			"text": "The user rejected.",
			"id": "maildefinition1"
		}
	}
}