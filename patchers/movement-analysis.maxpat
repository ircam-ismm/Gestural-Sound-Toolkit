{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 612.0, 382.0, 1644.0, 923.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 201.0, 196.0, 118.0, 22.0 ],
					"text" : "1-motion-descriptors"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.695880000000001,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 644.0, 309.0, 709.0, 413.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 21.0, 313.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.0, 3.0, 313.0, 20.0 ],
									"text" : "Gestural Sound Toolkit V2, based on MuBu for Max"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-58",
									"linecount" : 27,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 43.0, 689.0, 368.0 ],
									"presentation" : 1,
									"presentation_linecount" : 30,
									"presentation_rect" : [ 17.0, 25.0, 623.0, 409.0 ],
									"text" : "Contributors: \n–  STMS Lab IRCAM CNRS Sorbonne Université (Frédéric Bevilacqua,  Riccardo Borghesi, Diemo Schwarz, Victor Paredes)\n– ISIR Sorbonne Université (Baptiste Caramiaux,)\n– LIMSI CNRS (Jules Françoise)\n– University of York (Alessandro Altavilla)\n\n\n\nAcknowledgement: \nELEMENT (ANR-18-CE33-0002), element-project.ircam.fr\n\nBased on the Gestural Sound Toolkit by Baptiste Caramiaux and Alessandro Altavilla\n\nIRCAM-Centre Pompidou (Mubu: Riccardo Borghesi, Diemo Schwarz, Norbert Schnell, Frédéric Bevilacqua, Jules Françoise) \n\nEAVI website: eavi.goldsmithsdigital.com, (c) 2015 EAVI Group, Goldsmiths College, University of London\n\na Max library for the design of Embodied Sonic Interactions\n\n(c) 2015 EAVI Group, Goldsmiths College, University of London\n     (contact: bc@goldsmithsdigital.com)\n\nContributors: \n– EAVI Group Goldsmiths College (Baptiste Caramiaux, Alessandro Altavilla)\n– IRCAM-Centre Pompidou (Mubu: Riccardo Borghesi, Diemo Schwarz, Norbert Schnell, Frédéric Bevilacqua, Jules Françoise)\n\nEAVI website: eavi.goldsmithsdigital.com",
									"textcolor" : [ 0.5018590092659, 0.5018590092659, 0.5018590092659, 1.0 ]
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 131.0, 130.0, 53.0, 22.0 ],
					"text" : "p credits"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 612.0, 408.0, 1644.0, 897.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.899999999999999,
									"id" : "obj-46",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1116.0, 7.0, 226.0, 35.0 ],
									"text" : "Prototype Example"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 108.5, 267.0, 21.0 ],
									"text" : "More information at "
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 50.0, 319.0, 22.0 ],
									"text" : "Toolkit for prototyping gesture-to-sound scenario"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 878.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 223.0, 878.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 878.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 878.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 878.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 713.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 223.0, 713.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 713.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 713.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 713.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 288.0, 501.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 223.0, 501.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 501.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 501.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 501.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 285.0, 347.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 347.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.0, 347.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 155.0, 347.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 347.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 285.0, 241.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.0, 241.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.0, 241.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 155.0, 241.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 241.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light Italic",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 141.0, 109.0, 247.0, 20.0 ],
									"text" : " https://forum.ircam.fr/projects/detail/mubu/"
								}

							}
, 							{
								"box" : 								{
									"annotation" : " https://forum.ircam.fr/projemcts/detail/mubu/",
									"handoff" : "",
									"id" : "obj-43",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 141.0, 110.0, 247.0, 17.5 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-77",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 110.0, 196.0, 42.0 ],
									"text" : ";\rmax launchbrowser https://forum.ircam.fr/projects/detail/mubu/"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-12",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "in.comote.maxpat",
									"numinlets" : 6,
									"numoutlets" : 6,
									"offset" : [ -7.0, -5.0 ],
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 910.0, 77.0, 163.0, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1398.0, 551.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 83.0, 414.0, 21.0 ],
									"text" : "It requires the MuBu packag available from the Cycling'74 package manager. "
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.65045, 0.65045, 0.65045, 0.0 ],
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-48",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "gst.recorddata.maxpat",
									"numinlets" : 6,
									"numoutlets" : 3,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1112.0, 77.0, 505.79486083984375, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.classification.hhmm.maxpat",
									"numinlets" : 8,
									"numoutlets" : 3,
									"offset" : [ 0.0, -3.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 910.0, 426.0, 307.494384765625, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-40",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.FM.maxpat",
									"numinlets" : 6,
									"numoutlets" : 4,
									"offset" : [ -6.0, -7.0 ],
									"outlettype" : [ "signal", "", "", "" ],
									"patching_rect" : [ 1283.0, 646.0, 240.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-31",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "gst.orientation.maxpat",
									"numinlets" : 3,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 910.0, 269.0, 133.0, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 441.0, 307.0, 35.0 ],
									"text" : "Interactive Machine Learning"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 25.41419792175293,
									"id" : "obj-56",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 11.0, 326.0, 37.0 ],
									"text" : "Gestural Sound Toolkit V2 "
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 660.0, 98.0, 35.0 ],
									"text" : "Output"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"bgmode" : 2,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-26",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sid.output.maxpat",
									"numinlets" : 2,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 1163.0, 824.0, 182.97576904296875, 86.099037170410156 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-15",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.scratch.samples.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 981.0, 646.0, 240.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 579.0, 187.0, 35.0 ],
									"text" : "Sound Synthesis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 284.0, 208.0, 35.0 ],
									"text" : "Movement Analysis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.899999999999999,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 29.5, 168.0, 181.0, 35.0 ],
									"text" : "Interfaces (input)"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "gst.kick.maxpat",
									"numinlets" : 5,
									"numoutlets" : 3,
									"offset" : [ 0.0, -5.0 ],
									"outlettype" : [ "", "int", "" ],
									"patching_rect" : [ 1283.0, 426.0, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "gst.acc.intensity.maxpat",
									"numinlets" : 4,
									"numoutlets" : 4,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "float", "float", "float" ],
									"patching_rect" : [ 1283.0, 269.0, 133.731216430664062, 116.347579956054688 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 919.5, 252.536014556884766, 1292.5, 252.536014556884766 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"midpoints" : [ 948.299999999999955, 225.317264556884766, 976.5, 225.317264556884766 ],
									"order" : 1,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 919.5, 236.317264556884766, 919.5, 236.317264556884766 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"midpoints" : [ 948.299999999999955, 226.034568786621094, 1092.17948608398433, 226.034568786621094, 1092.17948608398433, 66.467613220214844, 1218.858972167968659, 66.467613220214844 ],
									"order" : 0,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 919.5, 235.034568786621094, 1100.5, 235.034568786621094, 1100.5, 70.467613220214844, 1121.5, 70.467613220214844 ],
									"order" : 2,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 1121.5, 251.748321533203125, 1292.5, 251.748321533203125 ],
									"order" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"midpoints" : [ 1364.897430419921875, 226.455352783203125, 976.5, 226.455352783203125 ],
									"source" : [ "obj-48", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 1121.5, 252.338165283203125, 919.5, 252.338165283203125 ],
									"order" : 1,
									"source" : [ "obj-48", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 74.0, 29.0, 66.0, 22.0 ],
					"text" : "p overview"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-16",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.scrolldisplay.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 687.5, 195.453369140625, 163.731216430664062, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light Italic",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 703.731216430664062, 124.453369140625, 247.0, 20.0 ],
									"text" : " https://forum.ircam.fr/projects/detail/mubu/"
								}

							}
, 							{
								"box" : 								{
									"annotation" : " https://forum.ircam.fr/projemcts/detail/mubu/",
									"handoff" : "",
									"id" : "obj-43",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 703.731216430664062, 125.453369140625, 247.0, 17.5 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 14.0,
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.5, 139.453369140625, 288.0, 40.0 ],
									"text" : "only a selection below\ncheck out also into the \"examples\" folder"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1366.5, 511.453369140625, 65.0, 22.0 ],
									"text" : "0.106158"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-77",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 968.731216430664062, 108.453369140625, 220.0, 42.0 ],
									"text" : ";\rmax launchbrowser https://forum.ircam.fr/projects/detail/mubu/"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-12",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "in.comote.maxpat",
									"numinlets" : 6,
									"numoutlets" : 6,
									"offset" : [ -7.0, -5.0 ],
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 507.5, 191.453369140625, 163.0, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 244.937235514322936, 742.109954833984375, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 1208.5, 511.453369140625, 65.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1616.5, 511.453369140625, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1476.5, 511.453369140625, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-63",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.angles.maxpat",
									"numinlets" : 3,
									"numoutlets" : 3,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1060.5, 387.453369140625, 133.0, 117.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.65045, 0.65045, 0.65045, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-60",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.filter.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 413.80047607421875, 769.609954833984375, 241.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 790.7471923828125, 517.1099853515625, 135.0, 28.0 ],
									"text" : "Regression"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 449.731216430664062, 108.453369140625, 267.0, 35.0 ],
									"text" : "must install  the MuBu package\ndirectly from the Cycling'74 package manager or "
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.65045, 0.65045, 0.65045, 0.0 ],
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-48",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "gst.recorddata.maxpat",
									"numinlets" : 6,
									"numoutlets" : 3,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 902.29486083984375, 191.453369140625, 505.79486083984375, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.classification.hhmm.maxpat",
									"numinlets" : 8,
									"numoutlets" : 3,
									"offset" : [ 0.0, -3.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 481.2528076171875, 547.109954833984375, 307.494384765625, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1501.374984741210938, 348.429107666015625, 129.0, 28.0 ],
									"text" : "Trigger"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-40",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.FM.maxpat",
									"numinlets" : 6,
									"numoutlets" : 4,
									"offset" : [ -6.0, -7.0 ],
									"outlettype" : [ "signal", "", "", "" ],
									"patching_rect" : [ 657.5, 769.453369140625, 240.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.regression.xmm.maxpat",
									"numinlets" : 9,
									"numoutlets" : 3,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1100.5, 547.109954833984375, 311.0, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 517.1099853515625, 116.0, 28.0 ],
									"text" : "Classification"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1361.063644409179688, 348.429107666015625, 129.0, 28.0 ],
									"text" : "Gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 785.140007019042969, 348.429107666015625, 256.0, 28.0 ],
									"text" : "Continuous Motion Descriptors"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 183.0, 353.429107666015625, 73.0, 28.0 ],
									"text" : "Filtering"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-31",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.orientation.maxpat",
									"numinlets" : 3,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 919.408790588378906, 388.6099853515625, 133.0, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-30",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.norm.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "float" ],
									"patching_rect" : [ 778.140007019042969, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-27",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.bandpass.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 445.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-25",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.gate.float.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ 1.0, -4.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1361.5, 387.453369140625, 134.0, 117.4757080078125 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-23",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "in.riotbitalino.maxpat",
									"numinlets" : 5,
									"numoutlets" : 4,
									"offset" : [ -7.0, -5.0 ],
									"outlettype" : [ "", "", "", "float" ],
									"patching_rect" : [ 338.5, 191.453369140625, 163.0, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-20",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.scrub.samples.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 908.5, 769.609954779785198, 240.794860999999997, 145.891739000000001 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-21",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "drawing.maxpat",
									"numinlets" : 3,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 168.5, 191.453369140625, 164.862800598144531, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-8",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.regression.gmr.maxpat",
									"numinlets" : 9,
									"numoutlets" : 3,
									"offset" : [ 0.0, 1.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 790.7471923828125, 547.109954833984375, 303.859992980957031, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-14",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.classification.gmm.maxpat",
									"numinlets" : 8,
									"numoutlets" : 2,
									"offset" : [ 0.0, -3.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 171.2528076171875, 547.109954833984375, 302.0, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 547.109954833984375, 102.0, 63.0 ],
									"text" : "Machine \nLearning"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 25.41419792175293,
									"id" : "obj-56",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.5, 107.453369140625, 389.0, 37.0 ],
									"text" : "Gestural Sound Toolkit V2 (beta)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 941.609954833984375, 98.0, 35.0 ],
									"text" : "Output"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"bgmode" : 2,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-26",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sid.output.maxpat",
									"numinlets" : 2,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 171.005615234375, 941.609954833984375, 182.97576904296875, 86.099037170410156 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-15",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.scratch.samples.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 171.005615234375, 769.609954833984375, 240.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.695880000000001,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 644.0, 309.0, 709.0, 413.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 21.0, 313.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 17.0, 3.0, 313.0, 20.0 ],
													"text" : "Gestural Sound Toolkit V2, based on MuBu for Max"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-58",
													"linecount" : 27,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 43.0, 689.0, 368.0 ],
													"presentation" : 1,
													"presentation_linecount" : 30,
													"presentation_rect" : [ 17.0, 25.0, 623.0, 409.0 ],
													"text" : "Contributors: \n–  STMS Lab IRCAM CNRS Sorbonne Université (Frédéric Bevilacqua,  Riccardo Borghesi, Diemo Schwarz, Victor Paredes)\n– ISIR Sorbonne Université (Baptiste Caramiaux,)\n– LIMSI CNRS (Jules Françoise)\n– University of York (Alessandro Altavilla)\n\n\n\nAcknowledgement: \nELEMENT (ANR-18-CE33-0002), element-project.ircam.fr\n\nBased on the Gestural Sound Toolkit by Baptiste Caramiaux and Alessandro Altavilla\n\nIRCAM-Centre Pompidou (Mubu: Riccardo Borghesi, Diemo Schwarz, Norbert Schnell, Frédéric Bevilacqua, Jules Françoise) \n\nEAVI website: eavi.goldsmithsdigital.com, (c) 2015 EAVI Group, Goldsmiths College, University of London\n\na Max library for the design of Embodied Sonic Interactions\n\n(c) 2015 EAVI Group, Goldsmiths College, University of London\n     (contact: bc@goldsmithsdigital.com)\n\nContributors: \n– EAVI Group Goldsmiths College (Baptiste Caramiaux, Alessandro Altavilla)\n– IRCAM-Centre Pompidou (Mubu: Riccardo Borghesi, Diemo Schwarz, Norbert Schnell, Frédéric Bevilacqua, Jules Françoise)\n\nEAVI website: eavi.goldsmithsdigital.com",
													"textcolor" : [ 0.5018590092659, 0.5018590092659, 0.5018590092659, 1.0 ]
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 1321.639942568359402, 106.953369140625, 58.999065000000002, 22.0 ],
									"text" : "p Credits"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 801.609954833984375, 109.0, 63.0 ],
									"text" : "Sound\nSynthesis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 388.6099853515625, 94.0, 35.0 ],
									"text" : "Analysis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.899999999999999,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.5, 191.453369140625, 111.0, 35.0 ],
									"text" : "Interfaces"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-6",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.lowpass.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-5",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.highpass.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.derivative.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 583.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.kick.maxpat",
									"numinlets" : 5,
									"numoutlets" : 3,
									"offset" : [ 0.0, -5.0 ],
									"outlettype" : [ "", "int", "" ],
									"patching_rect" : [ 1501.5, 387.453369140625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.acc.intensity.maxpat",
									"numinlets" : 4,
									"numoutlets" : 4,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "float", "float", "float" ],
									"patching_rect" : [ 1208.5, 387.453369140625, 133.731216430664062, 116.347579956054688 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 517.0, 350.303020477294922, 1218.0, 350.303020477294922 ],
									"order" : 2,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"midpoints" : [ 545.799999999999955, 340.303020477294922, 985.908790588378906, 340.303020477294922 ],
									"order" : 1,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 517.0, 351.303020477294922, 928.908790588378906, 351.303020477294922 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 2 ],
									"midpoints" : [ 574.600000000000023, 334.02032470703125, 874.858972167968773, 334.02032470703125, 874.858972167968773, 174.453369140625, 1106.512805175781295, 174.453369140625 ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"midpoints" : [ 545.799999999999955, 341.02032470703125, 882.17948608398433, 341.02032470703125, 882.17948608398433, 181.453369140625, 1009.153833007812523, 181.453369140625 ],
									"order" : 0,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 517.0, 350.02032470703125, 890.5, 350.02032470703125, 890.5, 185.453369140625, 911.79486083984375, 185.453369140625 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 463.7528076171875, 738.109954833984375, 254.437235514322936, 738.109954833984375 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 3,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 2,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"midpoints" : [ 1371.0, 507.127159118652344, 1422.0, 507.127159118652344 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-40", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"midpoints" : [ 1218.0, 536.453369140625, 1352.0, 536.453369140625, 1352.0, 376.453369140625, 1486.0, 376.453369140625 ],
									"order" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 1218.0, 534.453369140625, 1349.5, 534.453369140625, 1349.5, 376.453369140625, 1371.0, 376.453369140625 ],
									"order" : 2,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 1218.0, 535.453369140625, 1348.260303497314453, 535.453369140625, 1348.260303497314453, 377.6099853515625, 1511.0, 377.6099853515625 ],
									"order" : 1,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-60", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 113.0, 96.0, 61.0, 22.0 ],
					"text" : "p intro2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1644.0, 897.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"showontab" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-16",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.scrolldisplay.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 687.5, 195.453369140625, 163.731216430664062, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light Italic",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 703.731216430664062, 124.453369140625, 247.0, 20.0 ],
									"text" : " https://forum.ircam.fr/projects/detail/mubu/"
								}

							}
, 							{
								"box" : 								{
									"annotation" : " https://forum.ircam.fr/projemcts/detail/mubu/",
									"handoff" : "",
									"id" : "obj-43",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 703.731216430664062, 125.453369140625, 247.0, 17.5 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 14.0,
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.5, 139.453369140625, 288.0, 40.0 ],
									"text" : "only a selection below\ncheck out also into the \"examples\" folder"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1366.5, 511.453369140625, 65.0, 22.0 ],
									"text" : "0.106158"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"hidden" : 1,
									"id" : "obj-77",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 968.731216430664062, 108.453369140625, 220.0, 42.0 ],
									"text" : ";\rmax launchbrowser https://forum.ircam.fr/projects/detail/mubu/"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-12",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "in.comote.maxpat",
									"numinlets" : 6,
									"numoutlets" : 6,
									"offset" : [ -7.0, -5.0 ],
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 507.5, 191.453369140625, 163.0, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 244.937235514322936, 742.109954833984375, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 1208.5, 511.453369140625, 65.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1616.5, 511.453369140625, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1476.5, 511.453369140625, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-63",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.angles.maxpat",
									"numinlets" : 3,
									"numoutlets" : 3,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1060.5, 387.453369140625, 133.0, 117.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.65045, 0.65045, 0.65045, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-60",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.filter.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 413.80047607421875, 769.609954833984375, 241.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 790.7471923828125, 517.1099853515625, 135.0, 28.0 ],
									"text" : "Regression"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 449.731216430664062, 108.453369140625, 267.0, 35.0 ],
									"text" : "must install  the MuBu package\ndirectly from the Cycling'74 package manager or "
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.65045, 0.65045, 0.65045, 0.0 ],
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-48",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "gst.recorddata.maxpat",
									"numinlets" : 6,
									"numoutlets" : 3,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 902.29486083984375, 191.453369140625, 505.79486083984375, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.classification.hhmm.maxpat",
									"numinlets" : 8,
									"numoutlets" : 3,
									"offset" : [ 0.0, -3.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 481.2528076171875, 547.109954833984375, 307.494384765625, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1501.374984741210938, 348.429107666015625, 129.0, 28.0 ],
									"text" : "Trigger"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-40",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.FM.maxpat",
									"numinlets" : 6,
									"numoutlets" : 4,
									"offset" : [ -6.0, -7.0 ],
									"outlettype" : [ "signal", "", "", "" ],
									"patching_rect" : [ 657.5, 769.453369140625, 240.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.regression.xmm.maxpat",
									"numinlets" : 9,
									"numoutlets" : 3,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1100.5, 547.109954833984375, 311.0, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 517.1099853515625, 116.0, 28.0 ],
									"text" : "Classification"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1361.063644409179688, 348.429107666015625, 129.0, 28.0 ],
									"text" : "Gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 785.140007019042969, 348.429107666015625, 256.0, 28.0 ],
									"text" : "Continuous Motion Descriptors"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 18.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 183.0, 353.429107666015625, 73.0, 28.0 ],
									"text" : "Filtering"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-31",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.orientation.maxpat",
									"numinlets" : 3,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 919.408790588378906, 388.6099853515625, 133.0, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-30",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.norm.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "float" ],
									"patching_rect" : [ 778.140007019042969, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-27",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.bandpass.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 445.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-25",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.gate.float.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ 1.0, -4.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1361.5, 387.453369140625, 134.0, 117.4757080078125 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-23",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "in.riotbitalino.maxpat",
									"numinlets" : 5,
									"numoutlets" : 4,
									"offset" : [ -7.0, -5.0 ],
									"outlettype" : [ "", "", "", "float" ],
									"patching_rect" : [ 338.5, 191.453369140625, 163.0, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-20",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.scrub.samples.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 908.5, 769.609954779785198, 240.794860999999997, 145.891739000000001 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-21",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "drawing.maxpat",
									"numinlets" : 3,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 168.5, 191.453369140625, 164.862800598144531, 132.56695556640625 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-8",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.regression.gmr.maxpat",
									"numinlets" : 9,
									"numoutlets" : 3,
									"offset" : [ 0.0, 1.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 790.7471923828125, 547.109954833984375, 303.859992980957031, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-14",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "ml.classification.gmm.maxpat",
									"numinlets" : 8,
									"numoutlets" : 2,
									"offset" : [ 0.0, -3.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 171.2528076171875, 547.109954833984375, 302.0, 188.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 547.109954833984375, 102.0, 63.0 ],
									"text" : "Machine \nLearning"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Medium",
									"fontsize" : 25.41419792175293,
									"id" : "obj-56",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 53.5, 107.453369140625, 389.0, 37.0 ],
									"text" : "Gestural Sound Toolkit V2 (beta)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 941.609954833984375, 98.0, 35.0 ],
									"text" : "Output"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"bgmode" : 2,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-26",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sid.output.maxpat",
									"numinlets" : 2,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 171.005615234375, 941.609954833984375, 182.97576904296875, 86.099037170410156 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.823529, 0.823529, 0.823529, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-15",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "synth.scratch.samples.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 171.005615234375, 769.609954833984375, 240.79486083984375, 145.891738891601562 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.695880000000001,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 644.0, 309.0, 709.0, 413.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 21.0, 313.0, 20.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 17.0, 3.0, 313.0, 20.0 ],
													"text" : "Gestural Sound Toolkit V2, based on MuBu for Max"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-58",
													"linecount" : 27,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 8.0, 43.0, 689.0, 368.0 ],
													"presentation" : 1,
													"presentation_linecount" : 30,
													"presentation_rect" : [ 17.0, 25.0, 623.0, 409.0 ],
													"text" : "Contributors: \n–  STMS Lab IRCAM CNRS Sorbonne Université (Frédéric Bevilacqua,  Riccardo Borghesi, Diemo Schwarz, Victor Paredes)\n– ISIR Sorbonne Université (Baptiste Caramiaux,)\n– LIMSI CNRS (Jules Françoise)\n– University of York (Alessandro Altavilla)\n\n\n\nAcknowledgement: \nELEMENT (ANR-18-CE33-0002), element-project.ircam.fr\n\nBased on the Gestural Sound Toolkit by Baptiste Caramiaux and Alessandro Altavilla\n\nIRCAM-Centre Pompidou (Mubu: Riccardo Borghesi, Diemo Schwarz, Norbert Schnell, Frédéric Bevilacqua, Jules Françoise) \n\nEAVI website: eavi.goldsmithsdigital.com, (c) 2015 EAVI Group, Goldsmiths College, University of London\n\na Max library for the design of Embodied Sonic Interactions\n\n(c) 2015 EAVI Group, Goldsmiths College, University of London\n     (contact: bc@goldsmithsdigital.com)\n\nContributors: \n– EAVI Group Goldsmiths College (Baptiste Caramiaux, Alessandro Altavilla)\n– IRCAM-Centre Pompidou (Mubu: Riccardo Borghesi, Diemo Schwarz, Norbert Schnell, Frédéric Bevilacqua, Jules Françoise)\n\nEAVI website: eavi.goldsmithsdigital.com",
													"textcolor" : [ 0.5018590092659, 0.5018590092659, 0.5018590092659, 1.0 ]
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 1321.639942568359402, 106.953369140625, 58.999065000000002, 22.0 ],
									"text" : "p Credits"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 801.609954833984375, 109.0, 63.0 ],
									"text" : "Sound\nSynthesis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.865383000000001,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 388.6099853515625, 94.0, 35.0 ],
									"text" : "Analysis"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue Light",
									"fontsize" : 23.899999999999999,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.5, 191.453369140625, 111.0, 35.0 ],
									"text" : "Interfaces"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-6",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.lowpass.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-5",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.highpass.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.derivative.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 583.0, 388.6099853515625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.kick.maxpat",
									"numinlets" : 5,
									"numoutlets" : 3,
									"offset" : [ 0.0, -5.0 ],
									"outlettype" : [ "", "int", "" ],
									"patching_rect" : [ 1501.5, 387.453369140625, 133.731216430664062, 116.319091796875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.819608, 0.819608, 0.819608, 0.0 ],
									"bgmode" : 2,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "sp.acc.intensity.maxpat",
									"numinlets" : 4,
									"numoutlets" : 4,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "float", "float", "float" ],
									"patching_rect" : [ 1208.5, 387.453369140625, 133.731216430664062, 116.347579956054688 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 517.0, 350.303020477294922, 1218.0, 350.303020477294922 ],
									"order" : 2,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"midpoints" : [ 545.799999999999955, 340.303020477294922, 985.908790588378906, 340.303020477294922 ],
									"order" : 1,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 517.0, 351.303020477294922, 928.908790588378906, 351.303020477294922 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 2 ],
									"midpoints" : [ 574.600000000000023, 334.02032470703125, 874.858972167968773, 334.02032470703125, 874.858972167968773, 174.453369140625, 1106.512805175781295, 174.453369140625 ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"midpoints" : [ 545.799999999999955, 341.02032470703125, 882.17948608398433, 341.02032470703125, 882.17948608398433, 181.453369140625, 1009.153833007812523, 181.453369140625 ],
									"order" : 0,
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 517.0, 350.02032470703125, 890.5, 350.02032470703125, 890.5, 185.453369140625, 911.79486083984375, 185.453369140625 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 463.7528076171875, 738.109954833984375, 254.437235514322936, 738.109954833984375 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 3,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 2,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-25", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"midpoints" : [ 1371.0, 507.127159118652344, 1422.0, 507.127159118652344 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"source" : [ "obj-40", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"midpoints" : [ 1218.0, 536.453369140625, 1352.0, 536.453369140625, 1352.0, 376.453369140625, 1486.0, 376.453369140625 ],
									"order" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 1218.0, 534.453369140625, 1349.5, 534.453369140625, 1349.5, 376.453369140625, 1371.0, 376.453369140625 ],
									"order" : 2,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 1218.0, 535.453369140625, 1348.260303497314453, 535.453369140625, 1348.260303497314453, 377.6099853515625, 1511.0, 377.6099853515625 ],
									"order" : 1,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"hidden" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 0,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-60", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 93.5, 60.0, 70.0, 22.0 ],
					"text" : "p examples"
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-1::obj-12::obj-55" : [ "live.text", "live.text", 0 ],
			"obj-1::obj-12::obj-56" : [ "live.text[1]", "live.text", 0 ],
			"obj-1::obj-12::obj-60" : [ "live.text[3]", "live.text[3]", 0 ],
			"obj-1::obj-15::obj-18::obj-88" : [ "live.toggle[20]", "live.toggle", 0 ],
			"obj-1::obj-15::obj-18::obj-92" : [ "live.toggle[17]", "live.toggle", 0 ],
			"obj-1::obj-15::obj-22" : [ "live.gain~", "live.gain~", 0 ],
			"obj-1::obj-20::obj-15::obj-88" : [ "live.toggle[2]", "live.toggle", 0 ],
			"obj-1::obj-20::obj-15::obj-92" : [ "live.toggle[1]", "live.toggle", 0 ],
			"obj-1::obj-20::obj-2" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-1::obj-25::obj-13" : [ "live.toggle[18]", "live.toggle", 0 ],
			"obj-1::obj-25::obj-8::obj-17" : [ "live.toggle[14]", "live.toggle[1]", 0 ],
			"obj-1::obj-26::obj-2" : [ "live.gain~[5]", "live.gain~[4]", 0 ],
			"obj-1::obj-3::obj-4" : [ "live.button", "live.button", 0 ],
			"obj-1::obj-40::obj-2" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-1::obj-60::obj-2" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-2::obj-12::obj-55" : [ "live.text[2]", "live.text", 0 ],
			"obj-2::obj-12::obj-56" : [ "live.text[4]", "live.text", 0 ],
			"obj-2::obj-12::obj-60" : [ "live.text[5]", "live.text[3]", 0 ],
			"obj-2::obj-15::obj-18::obj-88" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-2::obj-15::obj-18::obj-92" : [ "live.toggle[11]", "live.toggle", 0 ],
			"obj-2::obj-15::obj-22" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-2::obj-20::obj-15::obj-88" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-2::obj-20::obj-15::obj-92" : [ "live.toggle[4]", "live.toggle", 0 ],
			"obj-2::obj-20::obj-2" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-2::obj-25::obj-13" : [ "live.toggle[21]", "live.toggle", 0 ],
			"obj-2::obj-25::obj-8::obj-17" : [ "live.toggle[5]", "live.toggle[1]", 0 ],
			"obj-2::obj-26::obj-2" : [ "live.gain~[7]", "live.gain~[4]", 0 ],
			"obj-2::obj-3::obj-4" : [ "live.button[1]", "live.button", 0 ],
			"obj-2::obj-40::obj-2" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-2::obj-60::obj-2" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-3::obj-12::obj-55" : [ "live.text[8]", "live.text", 0 ],
			"obj-3::obj-12::obj-56" : [ "live.text[7]", "live.text", 0 ],
			"obj-3::obj-12::obj-60" : [ "live.text[6]", "live.text[3]", 0 ],
			"obj-3::obj-15::obj-18::obj-88" : [ "live.toggle[23]", "live.toggle", 0 ],
			"obj-3::obj-15::obj-18::obj-92" : [ "live.toggle[22]", "live.toggle", 0 ],
			"obj-3::obj-15::obj-22" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-3::obj-26::obj-2" : [ "live.gain~[12]", "live.gain~[4]", 0 ],
			"obj-3::obj-3::obj-4" : [ "live.button[2]", "live.button", 0 ],
			"obj-3::obj-40::obj-2" : [ "live.gain~[14]", "live.gain~", 0 ],
			"obj-4::obj-12::obj-55" : [ "live.text[10]", "live.text", 0 ],
			"obj-4::obj-12::obj-56" : [ "live.text[9]", "live.text", 0 ],
			"obj-4::obj-12::obj-60" : [ "live.text[11]", "live.text[3]", 0 ],
			"obj-4::obj-26::obj-2" : [ "live.gain~[15]", "live.gain~[4]", 0 ],
			"obj-4::obj-60::obj-2" : [ "live.gain~[16]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-1::obj-12::obj-55" : 				{
					"parameter_longname" : "live.text"
				}
,
				"obj-1::obj-12::obj-56" : 				{
					"parameter_longname" : "live.text[1]"
				}
,
				"obj-1::obj-12::obj-60" : 				{
					"parameter_longname" : "live.text[3]"
				}
,
				"obj-1::obj-15::obj-18::obj-88" : 				{
					"parameter_longname" : "live.toggle[20]"
				}
,
				"obj-1::obj-15::obj-18::obj-92" : 				{
					"parameter_longname" : "live.toggle[17]"
				}
,
				"obj-1::obj-15::obj-22" : 				{
					"parameter_longname" : "live.gain~"
				}
,
				"obj-1::obj-20::obj-15::obj-88" : 				{
					"parameter_longname" : "live.toggle[2]"
				}
,
				"obj-1::obj-20::obj-15::obj-92" : 				{
					"parameter_longname" : "live.toggle[1]"
				}
,
				"obj-1::obj-3::obj-4" : 				{
					"parameter_longname" : "live.button"
				}
,
				"obj-2::obj-12::obj-55" : 				{
					"parameter_longname" : "live.text[2]"
				}
,
				"obj-2::obj-12::obj-56" : 				{
					"parameter_longname" : "live.text[4]"
				}
,
				"obj-2::obj-12::obj-60" : 				{
					"parameter_longname" : "live.text[5]"
				}
,
				"obj-2::obj-15::obj-18::obj-88" : 				{
					"parameter_longname" : "live.toggle[10]"
				}
,
				"obj-2::obj-15::obj-18::obj-92" : 				{
					"parameter_longname" : "live.toggle[11]"
				}
,
				"obj-2::obj-15::obj-22" : 				{
					"parameter_longname" : "live.gain~[6]"
				}
,
				"obj-2::obj-20::obj-15::obj-88" : 				{
					"parameter_longname" : "live.toggle[3]"
				}
,
				"obj-2::obj-20::obj-15::obj-92" : 				{
					"parameter_longname" : "live.toggle[4]"
				}
,
				"obj-2::obj-20::obj-2" : 				{
					"parameter_longname" : "live.gain~[8]"
				}
,
				"obj-2::obj-25::obj-13" : 				{
					"parameter_longname" : "live.toggle[21]"
				}
,
				"obj-2::obj-25::obj-8::obj-17" : 				{
					"parameter_longname" : "live.toggle[5]"
				}
,
				"obj-2::obj-26::obj-2" : 				{
					"parameter_longname" : "live.gain~[7]"
				}
,
				"obj-2::obj-3::obj-4" : 				{
					"parameter_longname" : "live.button[1]"
				}
,
				"obj-2::obj-40::obj-2" : 				{
					"parameter_longname" : "live.gain~[9]"
				}
,
				"obj-2::obj-60::obj-2" : 				{
					"parameter_longname" : "live.gain~[10]"
				}
,
				"obj-3::obj-12::obj-55" : 				{
					"parameter_longname" : "live.text[8]"
				}
,
				"obj-3::obj-12::obj-56" : 				{
					"parameter_longname" : "live.text[7]"
				}
,
				"obj-3::obj-12::obj-60" : 				{
					"parameter_longname" : "live.text[6]"
				}
,
				"obj-3::obj-15::obj-18::obj-88" : 				{
					"parameter_longname" : "live.toggle[23]"
				}
,
				"obj-3::obj-15::obj-18::obj-92" : 				{
					"parameter_longname" : "live.toggle[22]"
				}
,
				"obj-3::obj-15::obj-22" : 				{
					"parameter_longname" : "live.gain~[11]"
				}
,
				"obj-3::obj-26::obj-2" : 				{
					"parameter_longname" : "live.gain~[12]"
				}
,
				"obj-3::obj-3::obj-4" : 				{
					"parameter_longname" : "live.button[2]"
				}
,
				"obj-3::obj-40::obj-2" : 				{
					"parameter_longname" : "live.gain~[14]"
				}
,
				"obj-4::obj-12::obj-55" : 				{
					"parameter_longname" : "live.text[10]"
				}
,
				"obj-4::obj-12::obj-56" : 				{
					"parameter_longname" : "live.text[9]"
				}
,
				"obj-4::obj-12::obj-60" : 				{
					"parameter_longname" : "live.text[11]"
				}
,
				"obj-4::obj-26::obj-2" : 				{
					"parameter_longname" : "live.gain~[15]"
				}
,
				"obj-4::obj-60::obj-2" : 				{
					"parameter_longname" : "live.gain~[16]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "1-motion-descriptors.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/examples",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/examples",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "FM-synth-adsr.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "FM-synth-const.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "comote-connect-resize.js",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "comote-connect-server.js",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "comote-connect.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "comote-screenshot-3.png",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "drawing.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/lcd",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/lcd",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "gst.acc.intensity.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "./mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.kick.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "./mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.orientation.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "./mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.recorddata.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/data-recording-playing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/data-recording-playing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.riotbitalino.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/riot",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/riot",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "imubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "in.comote.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "in.riotbitalino.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/riot",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-interfaces/riot",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.classification.gmm.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.classification.hhmm.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.regression.gmr.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.regression.xmm.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.gmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.gmr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.granular~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.hhmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.play.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.record.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.scroll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.track.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.xmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pipo.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sid.output.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.acc.intensity.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.angles.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.bandpass.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.derivative.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.gate.float.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.highpass.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.kick.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.lowpass.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.norm.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.orientation.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.FM.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.ctrl.soundpool.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.filter.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.scratch.samples.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.scrub.samples.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../Max 9/Packages/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
