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
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"a0d5c1ff-76f8-4e7e-af7a-2c196ca2ab60": {
					"name": "SequenceFlow2"
				},
				"114e5b6a-08fa-4c40-87a8-519ffc59de4f": {
					"name": "SequenceFlow3"
				},
				"24b1b2b3-5b6f-4b87-9f51-c539828a9be3": {
					"name": "SequenceFlow4"
				},
				"32a3f120-bdc4-4b7d-9c48-c85bc597349c": {
					"name": "SequenceFlow5"
				},
				"ef25f433-7544-4b52-90a5-751c792351f3": {
					"name": "SequenceFlow6"
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
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "730587b3-922c-4384-84a2-8941b40e11cc"
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
				"616695e1-da02-497c-89cd-6372c8fe0216": {},
				"695c825d-7430-4592-83e3-7f4232298a82": {},
				"25d8f3ea-68ef-4d2c-ae45-12fc985d80e7": {},
				"db537dca-427b-475c-a3c8-b8f61b090599": {},
				"0a9e74a7-308c-4585-a3b6-00e0447a17fa": {},
				"cc7648f3-62ca-4f3a-bc9e-aa7c1d2bc7ba": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 790,
			"y": 86,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 240,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "42ea5de3-7d9c-421f-850f-6bc7e238b5df",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 1,
			"exclusivegateway": 1
		},
		"16b907aa-ce83-4964-b1e9-b73e4dc85796": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/SalesOrderProcessingWFMK/WorkflowInput.json",
			"id": "default-start-context"
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
		"42ea5de3-7d9c-421f-850f-6bc7e238b5df": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 190,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "730587b3-922c-4384-84a2-8941b40e11cc"
		},
		"a0d5c1ff-76f8-4e7e-af7a-2c196ca2ab60": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "730587b3-922c-4384-84a2-8941b40e11cc",
			"targetRef": "9805d212-76c0-493c-b058-87d269f2b251"
		},
		"4b77b78b-3d80-4674-a53f-39634c7eff4a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "240,117.5 354,117.5",
			"sourceSymbol": "42ea5de3-7d9c-421f-850f-6bc7e238b5df",
			"targetSymbol": "bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd",
			"object": "a0d5c1ff-76f8-4e7e-af7a-2c196ca2ab60"
		},
		"9805d212-76c0-493c-b058-87d269f2b251": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "114e5b6a-08fa-4c40-87a8-519ffc59de4f"
		},
		"bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 333,
			"y": 98,
			"object": "9805d212-76c0-493c-b058-87d269f2b251"
		},
		"114e5b6a-08fa-4c40-87a8-519ffc59de4f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "9805d212-76c0-493c-b058-87d269f2b251",
			"targetRef": "3ad799fc-348a-4fc9-a308-56eab321adeb"
		},
		"616695e1-da02-497c-89cd-6372c8fe0216": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "354,119 354,40.25 530,40.25",
			"sourceSymbol": "bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd",
			"targetSymbol": "695c825d-7430-4592-83e3-7f4232298a82",
			"object": "114e5b6a-08fa-4c40-87a8-519ffc59de4f"
		},
		"3ad799fc-348a-4fc9-a308-56eab321adeb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/SalesOrderProcessingWFMK/CreateSalesOrderRequest.js",
			"id": "scripttask1",
			"name": "ScriptTask1"
		},
		"695c825d-7430-4592-83e3-7f4232298a82": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 480,
			"y": 10.25,
			"width": 100,
			"height": 60,
			"object": "3ad799fc-348a-4fc9-a308-56eab321adeb"
		},
		"24b1b2b3-5b6f-4b87-9f51-c539828a9be3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "3ad799fc-348a-4fc9-a308-56eab321adeb",
			"targetRef": "ece4018e-edee-4047-9b48-951994288d6e"
		},
		"25d8f3ea-68ef-4d2c-ae45-12fc985d80e7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "530,40.0625 679.25,40.0625",
			"sourceSymbol": "695c825d-7430-4592-83e3-7f4232298a82",
			"targetSymbol": "0a9e74a7-308c-4585-a3b6-00e0447a17fa",
			"object": "24b1b2b3-5b6f-4b87-9f51-c539828a9be3"
		},
		"32a3f120-bdc4-4b7d-9c48-c85bc597349c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"Declined\" }",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "9805d212-76c0-493c-b058-87d269f2b251",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"db537dca-427b-475c-a3c8-b8f61b090599": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "359,117 359,198 804,198 804,105",
			"sourceSymbol": "bd0c34f4-18f4-4d1f-b8fb-61cd9a1916cd",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "32a3f120-bdc4-4b7d-9c48-c85bc597349c"
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
		"0a9e74a7-308c-4585-a3b6-00e0447a17fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 629.25,
			"y": 9.875,
			"width": 100,
			"height": 60,
			"object": "ece4018e-edee-4047-9b48-951994288d6e"
		},
		"ef25f433-7544-4b52-90a5-751c792351f3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "ece4018e-edee-4047-9b48-951994288d6e",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"cc7648f3-62ca-4f3a-bc9e-aa7c1d2bc7ba": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "679.25,39.875 806,39.875 806,103.5",
			"sourceSymbol": "0a9e74a7-308c-4585-a3b6-00e0447a17fa",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "ef25f433-7544-4b52-90a5-751c792351f3"
		}
	}
}