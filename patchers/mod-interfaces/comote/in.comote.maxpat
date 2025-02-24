{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 574.0, 199.0, 763.0, 756.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 242.0, 269.0, 100.0, 22.0 ],
					"text" : "route interval"
				}

			}
, 			{
				"box" : 				{
					"comment" : "heading (deg)",
					"id" : "obj-37",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1215.0, 676.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1215.0, 403.0, 47.0, 22.0 ],
					"text" : "zl nth 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1203.0, 301.0, 153.0, 22.0 ],
					"text" : "sprintf /comote/%s/heading"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 989.0, 301.0, 191.0, 22.0 ],
					"text" : "sprintf /comote/%s/control/buttonB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 789.0, 301.0, 191.0, 22.0 ],
					"text" : "sprintf /comote/%s/control/buttonA"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 157.0, 447.0, 43.0, 22.0 ],
					"text" : "t i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 584.5, 457.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 584.5, 511.0, 70.75, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 487.222222222222229, 428.0, 55.666668333333746, 22.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.0, 328.325925925925958, 188.0, 22.0 ],
					"text" : "sprintf /comote/%s/magnetometer"
				}

			}
, 			{
				"box" : 				{
					"comment" : "sensors format",
					"id" : "obj-5",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 777.166666666666742, 25.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 157.0, 301.0, 100.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 123.0, 40.45385034929177, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 97.0, 40.0, 37.0, 20.0 ],
					"text" : "Mag."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 1.0, 0.435294117647059, 0.427450980392157, 1.0 ],
					"candicane3" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"candycane" : 7,
					"id" : "obj-57",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 119.0, 62.45385034929177, 45.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 62.0, 39.0, 67.0 ],
					"setstyle" : 1,
					"size" : 3,
					"slidercolor" : [ 0.92549, 0.749089, 0.670906, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "gyroscope [g1 g2 g3]",
					"id" : "obj-54",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1063.5, 676.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 736.0, 205.0, 83.0, 22.0 ],
					"text" : "route interval"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 936.0, 485.0, 92.0, 21.0 ],
					"text" : "loadmess set 10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-80",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 968.0, 524.0, 95.0, 20.0 ],
					"text" : "sampling period",
					"textcolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-84",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 911.0, 524.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 449.888888916666588, 592.0, 172.333334166666873, 22.0 ],
					"text" : "zl slice 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 449.555557250000334, 511.0, 95.5, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 104.0, 1430.0, 739.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 571.944455111111097, 157.0, 181.0, 22.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 733.944455111111097, 27.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 571.944455111111097, 234.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1084.00001066666664, -3.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1119.00001066666664, -3.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1003.000010666666526, 53.0, 24.0, 24.0 ],
									"svg" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1003.000010666666526, 87.0, 100.0, 22.0 ],
									"text" : "metro 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 329.944455111111097, 157.0, 181.0, 22.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.000010666666526, 152.0, 181.0, 22.0 ],
									"text" : "zl reg"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.000010666666526, 27.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 491.944455111111097, 27.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.000010666666526, 238.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 329.944455111111097, 238.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 2,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-3258",
						"bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
						"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ]
					}
,
					"patching_rect" : [ 449.888888916666588, 628.0, 632.333336666667492, 22.0 ],
					"saved_object_attributes" : 					{
						"editing_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 0.56078431372549, 0.56078431372549, 0.56078431372549, 1.0 ]
					}
,
					"text" : "p resample"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 501.0, 396.0, 976.0, 480.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 425.0, 91.0, 81.0, 22.0 ],
									"text" : "fswap 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 547.666666666666515, 91.0, 43.0, 22.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 424.0, 137.0, 43.0, 22.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 246.0, 204.0, 22.0 ],
									"text" : "join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "float", "float", "float" ],
									"patching_rect" : [ 425.0, 53.0, 141.666666666666515, 22.0 ],
									"text" : "unpack f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "float", "float", "float", "float", "float", "float" ],
									"patching_rect" : [ 46.966674666666449, 53.0, 328.99998000000005, 22.0 ],
									"text" : "unpack f f f f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 425.0, 202.0, 103.0, 22.0 ],
									"text" : "scale 0. 200. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 425.0, 167.0, 141.666666666666515, 22.0 ],
									"text" : "pack f f f"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 425.0, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 425.0, 287.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 356.9666546666665, 91.0, 43.0, 22.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 111.33335366666654, 91.0, 43.0, 22.0 ],
									"text" : "* -1."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 235.333301000000006, 130.0, 140.633353666666494, 22.0 ],
									"text" : "fswap 1."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 49.333312999999976, 130.0, 81.000020333333282, 22.0 ],
									"text" : "fswap 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.0, 202.0, 141.666666666666515, 22.0 ],
									"text" : "scale 0. 1000. 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.333312999999976, 202.0, 141.666666666666515, 22.0 ],
									"text" : "scale 0. 9.81 0. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.299999999999955, 167.0, 141.666666666666515, 22.0 ],
									"text" : "pack f f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.333312999999976, 167.0, 141.666666666666515, 22.0 ],
									"text" : "pack f f f"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.333312999999976, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-15", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-15", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 2 ],
									"source" : [ "obj-15", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"source" : [ "obj-15", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 2 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"originid" : "pat-3260"
					}
,
					"patching_rect" : [ 449.555557250000334, 555.0, 153.944442749999666, 22.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p device-motion-to-riot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 487.222222222222229, 457.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 400.5, 457.0, 72.0, 33.0 ],
					"text" : "requested period (ms)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 301.0, 414.0, 22.0, 22.0 ],
					"text" : "t 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 229.0, 414.0, 22.0, 22.0 ],
					"text" : "t 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 157.0, 414.0, 22.0, 22.0 ],
					"text" : "t 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"items" : [ "stop", ",", "riotbitalino", ",", "devicemotion" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 157.0, 345.0, 100.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 157.0, 379.0, 163.0, 22.0 ],
					"text" : "sel riotbitalino devicemotion"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 586.25, 428.0, 69.0, 22.0 ],
					"text" : "zl slice 1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "button B",
					"id" : "obj-34",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1166.166669666667531, 676.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "button A",
					"id" : "obj-31",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1121.833333333333485, 676.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1105.0, 74.0, 100.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 904.0, 114.0, 61.0, 30.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 139.0, 27.0, 29.0, 23.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_initial" : [ 0 ],
							"parameter_longname" : "live.text[6]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.text[3]",
							"parameter_type" : 2
						}

					}
,
					"text" : "QRC",
					"varname" : "live.text[3]"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.594473705410263, 0.720560630419913, 0.928309050695498, 1.0 ],
					"id" : "obj-56",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 887.64285714285711, 409.5, 82.133333333333326, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 141.0, 95.0, 27.0, 36.0 ],
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : "themecolor.live_value_arc"
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[7]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"text" : "B",
					"varname" : "live.text[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 764.35714285714289, 409.5, 83.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 141.0, 62.0, 27.0, 33.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_longname" : "live.text[8]",
							"parameter_mmax" : 1,
							"parameter_modmode" : 0,
							"parameter_osc_name" : "<default>",
							"parameter_shortname" : "live.text",
							"parameter_type" : 2
						}

					}
,
					"texton" : "A",
					"varname" : "live.text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 229.0, 83.0, 22.0 ],
					"text" : "prepend port"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 394.0, 201.0, 116.0, 22.0 ],
					"text" : "route osc_port"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 989.0, 328.0, 152.0, 22.0 ],
					"text" : "sprintf /comote/%s/buttonB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 597.0, 201.0, 83.0, 22.0 ],
					"text" : "route id"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 789.0, 328.325925925925958, 152.0, 22.0 ],
					"text" : "sprintf /comote/%s/buttonA"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 408.222223083333461, 328.325925925925958, 181.0, 22.0 ],
					"text" : "sprintf /comote/%s/devicemotion"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 257.0, 97.0, 22.0 ],
					"text" : "udpreceive 8902"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.529411764705882, 0.529411764705882, 0.529411764705882, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 394.5, 367.325925925925958, 882.0, 22.0 ],
					"text" : "route /comote/0/devicemotion /comote/0/magnetometer comote/0/buttonA /comote/0/control/buttonA /comote/0/buttonB /comote/0/control/buttonB /comote/0/heading"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Light",
					"fontsize" : 11.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 294.0, 404.0, 825.0, 477.0 ],
						"openinpresentation" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 609.0, 144.45385034929177, 95.000000000000057, 22.0 ],
									"text" : "prepend format"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 623.0, 62.0, 95.0, 20.0 ],
									"text" : "format",
									"textcolor" : [ 0.501859, 0.501859, 0.501859, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 652.0, 37.5, 92.0, 21.0 ],
									"text" : "loadmess set 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 37.5, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"items" : [ "stop", ",", "riotbitalino", ",", "devicemotion" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 609.0, 86.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 182.0, 100.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.683403, 0.543763, 0.321212, 0.11 ],
									"fontname" : "Helvetica Light",
									"fontsize" : 14.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 608.0, 11.0, 110.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 158.0, 209.0, 20.0 ],
									"text" : "format"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 109.0, 154.0, 938.0, 469.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"autofit" : 1,
													"data" : [ 70546, "png", "IBkSG0fBZn....PCIgDQRA..B3N..TfMHX....fxWOiA....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGdTTsvF.+cSuR5PBgTHgDHHD.ADQAo2jVTPkdUATjOK.h.RStDQ3hdsgRSoHHcEjlHjBcB8PIDHUBoSH81tY286OVxPlr6F1DRag2eOO4gLyblYNSBY228LmyYjHUpLkfHhHhHhn50LnttBPDQDQDQzSFCtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHROfQ00U.hHhHhH5okb4JvctycPLwDCxJqLgToRgb4xqSpKFZngvDSLA1ZqcvKu7B95quvPCe5aubI02e.Lkd5oiDRHAQqyM2bCN4jS0Q0Hp9l6cuDPxImDRIkTQpolBRIkTfyN6LZTibFN6bifKtzX3t6tUWWMIhHhnZH4me93nG8nHiLxnttpnQN3fCnu8suvRKs7o53TuO39ku7k035ewW7EqkqIT8EkTRIHrvBC6e+6C6YO6Aom9CfIlXLTnPIJoDYn3hKFlZpovHiLFFXfDHUpL3jSNhgMrggAO3gfN0oNAiLh2rIhHhnmEHWtBr+8uOjQFY.KrvR7RuTGgKt3BLyLygAFX.jHo1s9nTIfBEJPQEUHRN4jQXgcATPA4CGbvALjgLzmpVd+4xf6ojRJ3d26dHmbxEt4VSf6t6NL2byqxGOp1gb4xwV1xVvm+4eNjISFJrvBPIkThNu+FYjQvBKrDFYjQX4Ke4XricrvPCMrFrFSTUSIkTBhM1XQrwFGb14FgV1xVVu5CaVPAEf6d26hDSLI3laMA93iOvLyLqttZQDUNJTn.wFabvUWabk9uQSO8zwMu4sPyatuvEWb4ottHUpTnPghZjWqHhHh.m9zmFVZok3MeygASM0jp8ywSihKVJ1yd1CJnf7QW5RWPKZQKpxGqmaFbpJTn.abiaDcnCsGt6tanKc4Uwq+58Gst0sBN6bivTm5TQjQFYcc0Tuz9129gqt55S7K+8u0U4ywV1xVfWd0T7IexmfG9vLPt4lSkJzNfpvP4jS13gOLC7Iexm.u7poXKaYKU45DQ5h7xKOL0oNUg+NnUs5EzZYUpTI9ke4WPyatu3EdgVhAMnWGcnCsG1aucne8qeH5nioJWOxJqr0o+N0UWcEIkTRZ7XHUpTrzktT3t6tiN1wNf.BXHn8s+Egmd5IV4JWYcVeIkHRrcrichd0qdBGbvA3meMG1aucn8s+EwBVvBpv26rjRJAyctyEsoM9CWcswnu8s2vCObGd4USw92+eWkpKETPAXzidzOpKr1P7lu4a9D6NKacqaCt5pqXUqZU5z4HlXhE..cricDlZpIPpToXdyadvc2cClXhwU3Wt6taXdyadPpToUoqOcgolZBdoWpi..OUuNNPcbKt+ce22gYO6YIZcqbk+W7QezGIrb0QKtme94iwMtwg+9u2O..bzQmPqacqgM1XChO93v0t10fBEJfEVXI1xV9cL3AOnpvUyyu1wN1IF6XGM.PE1B11auCHwDSrRcryO+7wnF0nvIO4IQd4kqFKigFZHrzRq..PIkHCEUTQvLyLCFYjwO5XjmVCTXkUVitzktf+3O9im59cFQk24N24vDlv3QLw73Wn1N6rGolZppUVEJTfoMsogMtweSqGOqstA329sMhgLjAWoqK28t2EuvKzRcprQGcrvM2Zhn0ISlL7Nuy6fCb.s+l2iXDiDabiaDFXvyMsIDQ0qnPgBrvEtPrhU70PhDIvGe7AsnE9gDR3d3l27lPpTon6cuGXG6XmvN6rUz9JSlLLpQMJru88WPhDIve+8GsoMsEm6bmE24N2A..Se5SGe629+pT0oIMoIgctycfu5qVNL2bywrm8rQW5RWv92+9gDMzGVt+8SDu3K1V3pqthye9vfIl7ja87st0shBKrPLxQNRXokVh4Mu4g+6+ckUp54rl0rQfAFXkZepLxO+7we7G+AL2bywnG8nqxGm5z68Z4CsW55Jav8pCkFZ2PCMDe2288XBSXBh9OBQEUT38e+ogPCMT7Vu0vPHgDJd4W9kqVqCOO3UdkWAgDRnUaGu6cuDPe6auQxImLJrvBEsMiM1XXrwlfFz.qwa7FuAFzfFBbxIGQiZTiPiZTiPpolJRM0TQ5o+.bfCre7W+0egryNaHSlLHSlLgiSd4kKBMzPP6a+KhidziwAwJUsnjRJAKaYKCKe4ekN2Jze+2+8Bg1sxJqwvG9vw67Ni3QcQrMicrisibyMGLoIMQDczQCarwFQ6+wN1wwQNxgwvG9v03qekVZoI78CbfCBMsodp05h0VasZq6q+5uVHzts1ZGdu268vfFzfve9m6EaXC+JxM2bv129efN1wNhYLiYnSWyDQUuN3AODVwJ9ZznF4L15V2FdsWqqBa6t28tXPCZfHjPBFqcsqAyYNyQz9N0oNUru88Wvd6c.+y+7OnMsoMBa63GOH7FuwPwO8S+Dd8WePnO8o25T8I0TSE+9uuELwINIgWWHt3hCqXEeMtwMtAZcqU+NwOko7dH+7yG+1usQcJzN.DZsbyLSU2d92+8J+cS+2+8sTiFbuz51SaK6W+oSSVCYW6Z2Bsz9xVVfXJSYJpUll0rlgctyciN24NgXhIFL0oNEbwKdIXrwFWaWcoGofBJ.cpSuDxJqLEE7ozoWoANvAgktzkBu81aMt+t3hKB8Iu9zmdiu669dDczwfErfu.G7fG.xjIS31EVXgEh3iOdzoN8RH5niFVXgE07Wfzyz9lu4avxV1+A..d5omX4KeEXDi3s0Z4yLyrD8FF6bm6B8t28RX49129.KszR7q+5FPN4jM9ke4WD8ltQGcLXfCb.PoRkXsqcMH93SPsVSK8zefv2O6YOa7JuxqnyWOYjQF3a9luQX40st0igNzg..fN24NC+8uMXRSZh..Hv.CDSbhSDVYkU57wmHp5wV25uC.fksrkIJzN.fO93C97OetXpScJ3vG9PhdMDoRkh8t28..f8u+8KJzN.Pu5UOwZW65w3F2XvblyrQu50kzo6r1stUD.PUWXoTcriuD..t4MukZA2W6ZWKN1w9WrnEsXz111Vc8xVHmPo0oTRIEcdeKUUYepLJstU1LMokVZngMrgUtiS0Zspdne3G9N.n5V39oe5mp0xYmc1h8t2+DVXgkHhHh.+6+dLQaeSaZSXhSbh3e+2igzSOcrhUrBLfAL.7huX6TqE0N5Q+W7we7Ggd26dgt10tfYLiOD+9u+6PoR06URk83VXgEhe9m+YLpQMJ7RuTGwnF0nvt10tpvqu3hKdr10tVL7gOb7pu5qf2+8eeb26dW..rnEsHLwIpp04zjzSOcrzktTzu90O7xubmvm9oeBN3AODxO+7qvyYsgniNZjSNYCEJTHrNKszJzm9zWb9yGF1111lVCsqMd6sWXaaaa37mOLz6d2GgtWCfpauXFY7.s9yJhpLJt3hA.vXG63vktzkQW5xqVgke+6eeHqrxD..u4aNLQg1K0JW4JQngdBDZnm.Cdvh6pLwDSLBu9RQEUDRJI06RZO3AoK78MpQMpRc8b5SeFgtpVG6XGEBsWpQMpQgV1RUcCmLx3A3hW7RUpiOQT0iV25Vi4LmOGCaXCSiauzAE48u+8Es9vBKLTPAE.O7vC7RuzKow8Mf.FJL0TSwMtwMPngdBcp9jPB2C..d40ie+5l0LuEssRESLwh4Lm4f1291q1cCPWUaO6wTYno51u+6+NRLQMOlhzlmoaw8DSLIb9yed..7AevG7DKeKaYKQ25V2vgO7gve9m6Eu9qO.gsctycNr0s96nUspUHv.+O3zm9zBaSgBEvPCMDxjICu+6+9XyadSBaShDI37m+7XMqYM3vG9v3W+0eElZpopcbaSaZCVyZ9Er+8uOXngFB4xkiqd0qhcu6cgfBJH7y+7OqV88jm7TX.CneB21ECLv.bgKbArksrYr8suSbvCd.Dd3gioLkonVH26e+Dwq9pcFImbxB0yKe4Kie7G+Q3u+9iPBIz5zVLq0st03rm8bnG8nGHu7xElat4XVyZVX9ye9hJWFYjABN3Pvt28tvUtxkwCdPFH+7yCVZoUvQGc.sqcuHF9veKzidzc3fCN..Uuv092+9wxV1xvJW4JPgEVHrxJqQvAGrFuscDUYYu81issssigObUu4Y46pWk2QO5QE99oLkoJ78JUpDYlYlvd6sGVas0nyctyZb+6Uu5IF8nGCNzgNDFyXFMdgWP8A.a5oq4f64latZrqwTVQDwsD99QNxQo11Mv.Cv67Ni.KZQKTn7cu6cqBOlDQU+J+6QVdklcoKcQbqwW53IrssscZceMyLyDZTh6d26fdzit+DqOMqYMC..25V2D8rm8...23F27QayGgxoPgB7tu6jfb4kfe621X8pYQqZRETPA3bm6rZ8CZoI0Xs39l27lUaj6t4Mu4ZpSmFcoKcInToRXfAFnyAxJ81CcwKdAMt8u9q+Zb+6eergM7q35W+FHhHtsv+AaaaaaXyadSvQGcB+4etOjRJohDRPUYaRSZB10t1I9oe5mz5wMt3hEG8nGCYlYVHkTREAF3WAIRjfMrg0iScpSIp7QEUTX3CeXPpToXricbHzPOAxN6bvIO4ov3F23wDlv3QRIkrFOW4kWdHf.FBRN4jwXFyXwoO8YPVYkMN1wBB8rm8BgGd3Xzidz04yPD96u+HxHiDMsoMEKaYAJ5EjRJojvm8YyFMsodhoN0of8t28fXiMVjat4.EJTfbyMGDarwh8t28foN0o.u7po3y9rYKZ1xX9ye9Hv.+Jzzl1TDYjQB+82+Z+KR5YRSe5SWHztt3pW8JBeue90Bb0qdUzu90OXu81CmctQvWe8ASYJSQTCFTVFXfA329seColZpXUq5azXYJsE2Ksqf84e9bfyN6LbvA6g2d6El7jmrZ2owREQDQH78t6tGZrLkc8kMnOQT8CG8n+KBLv.giN5Dl6bmqns05Vq58+t10tpV2+x12riIFc6tS2xV9Bv.CL.m4LmQXcm8rm9QmyVIrtu+6+dbpScJrjk7kOUSUh5aTpTIxJqrpT6SM1Go4ce2Iqw0MtwMtZpSoZRMUU8WIu81acdFCoMsQUepJkTTeVe..vTSMEm3DmTiyooxkKGyZVyFuwa7Fh5OWicriEolZpXdyatHzPCUicYGCMzPbvCdHgVByLyLCyZVyBW7hWD6cu6AG5PGBcoKcQn7KbgKDYl4Cw.G3fv5V25D56TcpScBcpScBEVXgB80sxaIKYwH7vCGCYHCEqe8qWXeesWqqncsaWnac60vgO7gvd26dwa8Vukt7iM.nZDSqsYAH.U8utmTK6UdN5ni312V7zz49129wDlv3gBExQQEUDJpnhpviQt4lC..VyZVCV25VO13F2jvs5+C9fOPmtaLDUSpz9ets1ZGBO7qi.BXHh9fywEWbXia72v129ef8t2+RicklmjzRSUvcKszJL7gObDTPGWXaIjPBXKaYyXaaaqXKaYqp8gNJaP7xOayTJ2c28xT9HzXYHhp8r4MuYbhSbBTXgEhqbkKi3hKNz+9O.7ke4Whl27lKpru7K2IXhIlf3hKNbgKbAQYXJUYmNH00ozPas0F74e9bQfAtL3fC1CKrvBrl0rF7du2TDZM9ae6aiEtvEftzktTsO4jnOnrSXF5hmo6i6kNOg5iO9py6iO9n5+HkYlOTiae.CX.Z8AQvjlzjPfAFnF+O7CcnCE..W4JZNXa26d20X+Ns6cu6..p02quvEBC..KdwKViCPju5q9JMdd..N6YOK..97O+yUaes1ZqwDm3jDcNzUW6ZWCu7K2Is90ktj1C0qq1912AF+3GKxO+7dhc+fxqvBKD4medX7ierX6aeGO00EhpNnPgBjc1pZwkrxJSLwINAXs0Vi4O+u.G3.GB+7O+Knacq6.PU+WeXC6MvUup1aULsoztJS5omFtvEt.VzhVLN5QOF1111NF0nTM0jIWtbLtwMF0lcnhM13D9ds0+3c14Gu9XiM1Jc8iHp50oO8owl27lvt10NQTQEE7vCOfu95qntqaoL2bywvF1vA.vfG7fwEu3EEs8+9uO.lzjlfv9lQFOPsig1rfEr.7EewBvoO8owAO3AwG8Qerv7ydIkTBlzjlHLv.Cw5W+uJjIYaa6OP.AD.d0W8UvRW5RQd4kWU5mA5CJcpqVmKeMT8ndA6ryN..DWb59ahT5j3uM1XqF2dqZUqz35KuDR393l27lHyLyD4jS13ZW6Z..njRzb2Oo7if6R0nF4L.T0OTK0CdvCP7wGOLwDSDFPXkmyN6LbwEWD5C6kRlLYHrvTEH+5W+5HxHuiZ660u90Af1mC80F6s2Azsto890ZCanSUpiW4EczQiwMtwn15svBKfb4xg+96O702lCO7vCDe7wi6bmHQ3gGNLzPCQAETfP4KnfBv3F2XPG6XGpzCvUhptYfAF.6ryd7vGppgFJrvBQvAGrnYTgwO9wiQLhQf8u+8gBKrPr6cu6J0Lt.fp2nUhDIvZqa.NyYNC702G2fFCe3CCd5omHv.WFJojRve7GaSTeT2c2cSXvy9fG7.z3F2X0N9kc5lzM23zpJQ00V7hWL9zO8SgLYxPBIbebzidD7S+zOhUu5eBqcsqGiXDuinxut0sNjYlYhibjCiW4U5L7vCOPKa4KfKdwKhzSOM3me9gYMqYiIO4IAas0NctdXngFhEtvEhEtvEp1195u9qwEu3EwO9i+D7xqlB.UyFfSXBiC8rm8B96eavxW9WgHiLR76+tl6EA5yjHQBbzQGpT6SUJ39pW8pwG+whucF+u+22UuqKGTZn26bm6fhKtXM9oLKuR6eWks0izUJTn.KYIKA+1u8qU5oUHsU2zzCmfRe3sXqs1UgSYkN6rypEbuzGhB..ScppO0XVVkN.RzUsnEMG6XG0bsjs2d6MNyYNK5Se5CxO+7fQFYDL0Tyvrm8rwzm9zUadsF.H6ryF+zO8SXkqbkn3hKBkTRIvRKsB+y+7OLzNUug2d6kPvc+7qEpEJ2HiLByadyC6e+6C..m7j51L5PYcgKbwJb6yd1yFqbkq.xjICm3Dhawc+7qkH7vCG.pd9JnowCx8tWBBeeKao1e5vRDU6nrSKxspUsBCX.8G8su8GADvPv6+9SCcsqcEt55i+P3lXhIXW6ZW3+7e9O3e+2ihqd0qh3iOdzfFXC9fO3CvRW5+Ae22oZl5qzI6gmFW8pWEAF3xPu6ceDMUc+Qez+GZaaaKN7gOLjHQBb0UWwW9kKASaZSSTWF9YAVYkUZcV7QapRA2Ken8RWW8sf6k1J1kTRI3V25VncsS6iV5RUZKiWQirZsYjibj3O+y8BGczIL5QOlG08WbF1ZqMH6ryACdvCrReL0jl27lCyLyLjVZop04.TYxjgacK0GfXk81benCcDMd7Kc.8VQOETqqzgNzAbtycN7NuyaiacqagDRHpJ7EPrwFav7l27vTm5TgKt3Lb0UWwQNx+nV+6in5Rd4k23BWP0.hWSc0N.UCVaiLxHTRIknVWkQoRkXly7SwAO3AwXFyXwBVvBpz0AKszR3qu9hadyahniNZTXgEByMW0CLD+7yOgxU9ovMMs9xVdhn5OFv.5OZaaaKtxUtBBIjPvnGs3YIJSM0TrzktTrzktTjYlYgbyMWQOXBu8suM.z8def1HUpTLoIMQXokVh0t10Ir9jRJI7fGjNFwHdGgFtTUWEbI3ZW6ZOwf6JUV+cJgTCyH3XzidLvImbrRcbdltqxzzl5IZaaaKt5UuJ9se6WQ6Z2OTgkO5niAgFppVZJf.diJ04J0TSE+0e8mPhDIHjPBQzsgF.3JW4JZYOq7LxHiPaZSav4O+4w+9u+qFez4FTPAKLsMUVN5nivc2cG26d2C93iOvCObWsxTeWyadyw912eiF1PmDBV..byadSDUTQiqbkKi10tWDMqYdKLs34fCNfryNGjVZoqWdMSOaqrePxhJR8+tEP0.9rzGZXN5n3Wn+Dm3j3G+weD..KcoeIdm24cD8ZP4kWd3S9jOQ3bMqYo9Ss5hKtXgwRSyadyE82V942i6Rd6cu6Eu+6+9ps++0e8mZr7DQ0NhN5Xvt10NgGd3IF4HGgVKWiarq3JW4Jhd1NnI1YmshdPtke94Kb235QO5wSUccIKYI3F23F3W+0eCMoItJr96bGUOGZ72+G28g82+V+nsIdhpnrJcZzV0zysAvYmctR2yGb1YmqTkuxpzmKMksQQqrg1AdFevoB.Lsoo5MX9ke4Wpv9GUd4kGF9veSjat4.O8zSLfAz+J044pW8ZPoRkvau8VsP6.hmmlqNLzgF...lwLlgZsrdzQGClvDFuV22129N..Hba2KuzRKMbric7Jcebu1jGd3tPvhRJoDLsoo519M4IOI7e+uqDSdxSBcsqcESaZSSHri4laNCsS0K8du26I7.Aa+6e+pMiMnToR78e+2Kr7q8ZhGKIkc7iXrwFCasU7XzwJqrB27l2.aZSaDKXAegvCosxZiabiByPSk+Mk6bmeYXlYlA.fPCMDb7iGjns+m+4eILX1r15Ff1291+junIhpV4niNf.CbYXpS88vCenlmfMJojRvoOspoW59zm9Hr9jSNY3gGtil1TO05CDnksrkgTRIE3me98T8LO4bm6b3a9lUggLjghwLFwiaMWbQU346cuGeG7RHAUcCOmcVySLH.p5lO..EUjpIshwLlwVoqWUk8oxnz5Vo00ppm4CtOwINQz0tp5AMvG7AuO96+9.pUlzRKML1wNVbyappOcu5U+KBuIktpCcn8v.CL.QEUTp8lZG7fGBe0WEnV1yplYNyYh25sdajWd4hN0oWB8qe8Cye9yGCX.C.sqcsAsqcsSq2JqoMs2GFarwXNy4yvgNzgEssDSLIDP.CEu9q2eDRHgTsVmqoL3AOXr0s96Hu7xE4jS1PpToHmbxF4kWt3O9iso1SYRhpuoQMpQBsBdFY7.z291ar0stUjPB2Gm3DmDSXBS.aZSaD.p9.ne7G+wh1e+7yOrssscL1wNNr289WZr6yU5CNI4xkiW60dMr4MuYDczwfKcoKgkrjkfO5i9+.fpwUyPGp363nyN6L9fOX5BK+tu6jvO7C+.hM13vpV0pv+2+2LD11Lm4Lgs1p93MgHplkM1XCFzfFLJpnhvHG4HUaLtke94iQO5QirxJK3kWdIZxsvEWbA8pW8FIlXhXxSdRHyLEO2he5SeZ7ce2+C..KdweoFG+c5hBJn.LoIMQXqs1gUu5Uq11aVyZFL0TSEMq1TZ2H7EdAs28bJcvxV507hW7hwrl0r0oVQ2YmcFyZVyFKdwKtxboToUZcqxLvd0jmo6pL.pdSnsu8cfgO7ggyd1yhgMr2.Mu4MGsqcuHrwlFf3hKdDZngfhJpHXrwFiUu5etJMGI6fCNfgMrgicsqchANvAfN1wNB+7qk3RW5h3l27lX1y9yvW+0KuZ85ZCaXCvZqsFG3.G.AGbPH3fCBRjHAibjiBe228cZ8tFzidzcr10tNLwINADP.CAt6t63ke4NizSOcb9yeNTPAEfd1ydUuaLKnMyYNe9ilhKUuKFHQhD7tu66U6WoHpR5S9jOAm7jmDAEzwQBIj.l3DmfZkwJqrF6ae6WiyBUCe3CqBenO8du26gvBKLricrcjQFOPiOqMLzPUSIa8pW8TsssvEtPDVXmGm5TmBIlXhXly7SwLmo3mIE8su8CyblyTGtZIhpIrxU9ew8tW7H3fCBsrksDsu8uHZdyaAhO93wEu3EwCeXFnoMso3u9K0ui6ewWr.bxSdBDTPGG96eqQu6cugyN6LhHhHvQNxggBEJvG9geHdi2Hfpb8a9yedHpnhBae66TiMvfgFZHd228cwZVyZvZVyZfWd4MV9x+J3qu9J7jWUS7xKuPxImDBKrK.2bycXpolf.CLPDXfUuMZZUUwEKEgElpO.hWd40S0w5Y9f6..N4jS3e9mihu8a+Vrl07KHxHiDQF4i6qTFXfA30e8Ah4N24hN0oNUkOOadyaFt5Ziwl1zlw4O+4w4O+4gyN6LV25VO5ZWesp0f6.pdHM8K+xu.kJUhvCObjVZoiV1xVJLJwKs+Too448QO5QCCMzHryctCbhSbBrycpZ1fwImZHl27lOlwLlQk9tNTWo6cua3fG7fXfCbfnfBxWX8VXgk3fG7f3Ue0WsNr1QjtwBKr.G9vGFe629sXwKdQhdvhYpolh1291iUtx+qVG7pOIlYlYXKaYKvO+7C+3O9ih5eqFXfAnUspUXAKXQBObxzT8ae6a+Xdyat329seSzSQQyLyLL0oNUrzk9ezoYuKhnZFt5ZiwwOdPX9ye93.G3uwIO4IwINwIdz1bEibjiBey27MZbRcvKuZJN+4CCu268d3fG7.hdHN5niNg4Lm47T8.RJ3fCAqd0qFiXDiDu4ap8wQ3W+0q.IlXRXly7SgToRQqacqwl1zlgUVYkV2Ge80Wb6aGAxHiLvd26dPG6XGgKt3BLyLygAFXPs9.VUoRUYvJpnBQxImLBKrKfBJHe3fCNnwtSckgDoRkogw4ZESWlNH27l2rZsny5W+FD8jSUWNNYjQFH93iWTY7vCOpxSEQkNCyDe72C4jSNvM2bC93Syz5CUoppniNZXngFA2c2MMFbt5fRkJ05sqRoRknQMpgHu7xCojRpnAMnAZ83HWtbDYjQBGczQM9If0WbpScJLnAMHTPA4CKrvRbfCbfm4l5nnmOHSlLDQDQfqe8qCO7vCzgNzgp8OHcrwFGt3EuHr0VaQm5zKUguFQ4kRJofvC+5HojRDMoItg1zF+gSN8z8bZfHp5W1YmMt0stE7zSOqT4bxKu7vUu5UQBIbezzl5I72e+gEVXQMV8TSxM2bQVYksVeZMWd4me93nG8nBO7MquwAGb.8su8EVZokOUGmpTvcpt2xW9xwBW3BPaaaaQHgDpZ+A0JW4Jw7m+7PW6ZWUqO2+rrSdxSgAY1f0S...H.jDQAQkMr2.6YO+I5ZWYnchHhnmWHWtBbm6bGDSLwfrxJSHUpTHWtlevWVSyPCMDlXhIvVasCd6sWvGe7EFZ3SeC4xf65oxLyrPyatuHqrxDMu4MGcu6cGspUsFW9xWFG4HGFImbxvRKsB6XG6D8su84Ie.IhHhHhpWiA20icu6k.l5TmBN9wOlZayGe7Aae663oZJahHhHhHp9CFb+Y.Ijv8wsu8sQrwFC7vCOQaaaaD8DRkHhHhHR+GCtSDQDQDQ5Adl+AvDQDQDQD8r.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.FbmHhHhHhzCvf6DQDQDQjd.ipqq.DQDoaxO+7QhIljvxlZpovCObuNrFQDQTsIFbmHhzSb5SeFLsoMMgkaQKZANzgNXcXMhHhnZSL3NQDUCnnhJBsu8c...EVXgBq2byMWT4LzPCgSN4DbwEWPO5QOP.AD.bvA6qUqqDQDoef8wchHpFfRkpBrW1P6.Odck9Ud4kGhM1XwYNyYvxV1xvq9puJ1zl1bcTslHhn5yXvchHpdDoRkhkrjkfu3KVPccUgHhn5YXWkgHhpkz912dz912dgkKojRPBIj.t8suMRHgDDU1ssssg10t1ggMr2r1tZRDQT8TL3NQDUKYNyYNnCcn8psdEJThcsqcgu7K+RQcslUspUg.BH.Xng7liRDQDCtSDQ04Lv.I3cdm2FRkJEKZQKRX8ojRJ3Dm3DnG8n6OUG+TRIUb26dWb26dWXkUVA+7yO3qu9.SM0TMV96cuDfRkJEV1FarA1ZqMU34H0TSCEUTQBKakUVwAYKQDUMiA2Ihn5IFyXFM9lu4aP1Ymsv5t90udUJ3dIkHG+7O+yXCaXCHmbxQssafAF.e7wGrzktT0tK.yblyDW5RWRX4d0qdg0st0p0ykBEJwfFzfPFYjgv5V1xVFF4HGQktdSDQj1w6+JQDUOgDIRfu95qn0kTRIokRqc28tQg27MeS7se62pwP6..JTn.QFYjXLiYL3u9q8IZaCcnCUzxm9zmFEWbwZ87Ed3WSTnciLxHLfALfJc8lHhnJFCtSDQ0iXrwFKZY4xkWo1ekJUhO3C9.biabCQq2.CL.d6s2vYmcFRjHQX8RkJEe5m9o3.G3wOHmF3.GHLxnGeCYKpnhvYNyY054LnfBVzxcqac6I10ZHhHpxiA2Ihn5QhJpnDsbiabiqT6eHgDJhN5nEV1BKr.aXCa.gGd33e+2ihyblSiibjifV1xVJZ+V6ZebWgwN6rEcqacSz1O9wOtVOmAETPhVdvCdvUp5LQDQ5FFbmHhpm3nG8eQZokln00hVzhJ0w3F23FnKcoKBe8S+zOgdzitCKr3wOwV8wmlgUsp+qn86l27lPlLYBKGP.AHZ6AGr3VUuTImbJ3V25VBKat4li9zm9TopyDQDoa3fSkHhpGHrvBCye9yWz5ryN6Pu6cupTGmYLiOTmJmu95KLyLyDlIXTpTIRIkTfat4F..5Uu5IrxJqPd4kG..RN4jQDQDA7yO+DcbJef99zm9.yM2rJUclHhHcCCtSDQ0R1yd1ChO93EVVlLYHgDR.27l2Dm3DmPsxOsoMM05y6UWjHQBLwDSDMENV1Vb2LyLC8qe8C6YO6QXcG+3AoVv8x2EZJ+.akHhnpOL3NQDUKYG6XGXG6XG5TY6cu6Md22cxOUmOEJThXhIFbsqcMDQDQfrxJKjSN4fbyMWjat4p0YblREP.AHJ3dPAED9vOb5BKWTQEgyd1GOnUs0VaQW5RWdppyDQDocL3NQDUOhDIRvjlzjvm8YelnY+kJiBJnPr3EuXbjibDgt5RUQm6bmQCaXCE528W6Zpl1GcvAG..vYNyYE0h8u9q+5vXi4aqPDQ0T3fSkHhpiYrwFC2byML9wOdbfC72X9yedU4.vwFar3Mdi2.6d26Vqg1MzPCgc1Y2S7XYfARvPFxPDVVoRkhl5GUuaxLDPDQTMG1zHDQTsje9m+Y0dJkZngFAaroAU4VWurJoD4Xbia7HwDSTXcd6s2X7ie73EdgVBmc1EzfFz.XokV..f11118D6tLCcnCEqe8qWX4fBJH7Vu0vE99R4hKtfNzgN7TeMPDQj1wf6DQTsDGbvAgtYRMgSdxSJJztKt3B16d2Cr1ZqUqrRkJUT2bQadgWnknYMqYByu7m7jmDxjIC24N2EolZpBkavCdvUKe3ChHhzN1UYHhnmQDarwJZ4N0oNowP6.pl9IkJUpNcbK6b5dAET.N24NuZOzkFxP3CcIhHplFCtSDQOin7OkUiIlXzX4JnfBwO+y+hNebGxPGhnVSOnfBRTvcu81a0dRrRDQT0OFbmHhdFwq7JcFFXvieY8vCObL24NObkqbEnPgRje9EfSe5yfQNxQJZZb7IoIt5pn9u9l1zlv0t10DVlyc6DQTsC1G2IhnmQzfFz.zgNzADVXgIrtRm63s1ZqQ94mOTnPA..ZaaaKhHhHPwEWrNcrG5PGJtvEtfF21fGL6lLDQTsA1h6DQzyP9oe5mPaZSaTa84latBg18vCOvF1vFfolZpNebUMGsq9Sw01111BO7v8pdElHhHcFCtSDQOCwAGrGaaaaCibjiDMoIMQz1LyLyvTlxTve9m+IryNaqTGWas0Fzst0M0VeYmm2IhHplkDoRkorttRPDQTMiLxHCbm6bW3hKNilzD2fQFYXU9X8Iexmh8su8IrrQFYDNyYNMbzQGqNppDQD8Dv93NQD8LLGbvAz4N+zO2wGUTQiCcnCIZc8u+8mg1IhnZQrqxPDQjVoToRDQDQf4N24BYxjIrdIRjfIO4IUGVyHhnm+vVbmHhH0jZpogwO9wiLxHCjQFYn11e629s03ffkHhnZNL3NQDQpQt7Rvctycz31F4HGIVzhVXsbMhHhHFbmHhHchyN6L9rO6yP.AvG3RDQTcANqxPDQjZJpnhvQO5+BkJUBO8zC3s2dCqrxp55pEQD8bMFbmHhHhHhzCvYUFhHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AL5fG7f000AhHhHhHhdBjHUpLk00UBhHhHhHhpXrqxPDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5AXvchHhHhHRO.CtSDQDQDQ5ALpttBPDU+PIkTBRO8zQFYjAxJqrPt4lKxKu7QwEWDJt3hgb4Jfb4xUJQBfRkpu+RjT4NeRpr6PEvPCMThAFX.L0TSgYlYFrzRqf0VaEr0Vag816.bxIGgQFwWtiHhH8aRjJUlFdKXhnmGTXgEhDRHAjTRIizSOMjQFO7QaQWeYAsG9V2ykW8EfWabvAGPCanSvEWbAt4lavLyLqF+bRDQDUciA2I54LJTn.olZZHt3hEIlXh3AO3AZrbJ0TypWFZuEykTtxoq0rZ9.7..N5ninIMwU3gGdhF1PmfAFvdLHQDQ5GXvchdNgBEJQpolBt6ciBwGe7H+7ySXaOoP55J0CyKoLaSmNBUK0CcgUVYI7vCOPyZVyPCaXifAFT6ctIhHhpJXvchdNP1YmCt8si.QGcLHmbxF.pGVWhDIvd6sGt5pqvAGb.1YmcnAMvZXhIl.iM1X..HSlLHUpTjSN4hLyLSjQFYfDSLQ7vG9PMd7JyRkY85RMt1KDsM1XC7xKuPKZQKPCZf00ZmWhHhnJKFbmnmgIWtBDSLwfHhHBjTRIB.wA1kHQBZbiaLZQKZA7xqlByL27pz4onBKDwDSr31291HojRRsywiUYBvW61B3t5pqnEsnEnoMsovPCY2mgHhn5eXvchdFUQEULt90CGQFYjHu7xSsvzMqYMCctyuLrwVaqVOuYmUV3rm8bHpnhRKA3q+Fd2ZqsB95ayQqacqgolZRs54lHhH5IgA2I5YPYmc13JW4J31291p0EVb0UWQW5RWPCaTCqQqCokZZ3Tm5THwDSTz5q7A3q8664snEs.sqcsEMnAMnV+bSDQDoML3NQOiIszRGW4JWFwFarhBsas0M.cuGcCd5om0p0m3hKNDRvghbyMGg0oODd2Ku7BssssEN4ji05mahHhHMgA2I5YHO3AO.gE1EP7wGmv5TpTIb0UWwfFz.go0Qye4EWTQ3.G3fHwDSTTedu7A30d385lY7EO8zCzgNzA3fCNTmb9IhHhJKFbmnmQjYlYgvB67HlXhQXcJUpDspUsB8nGcGRpimuxUpPABN3PvMtwMzqBu6kWdgN1wN.aqlGK.DQDQUVL3NQOCn3hkhyblyfae6HDVmDIRP251qgV6u+0g0L0c8vCGgF5IpvAtZ8sv6snEs.ctycFlXhw0ImehHhH..NmmQjdN4xkiqcsqhHiLR.npU1UnPIdsWq9Wnc.fV6u+30dsWCJTnTH79iCwW5xZauqaZmg6bmHQ3gGNjKWdcx4mHhHBfA2IRuWLwDCt8siDJUp.JUpDJUBz5V2J3eap+EZuT92F+QqacqfRknJDdu1mBEJQjQdaDarwUWWUHhH54XL3NQ5wxN6bPDQbaje94IDZuIMwUzidz855p1STO5Q2QSZhqZI7dEotIQed4kOhLxHQN4jacx4mHhHhA2IROkBEJQDQbKjXh2G.pZgZaroAXPCZf04CDUcgDCL.CZPCD1XSCD055pBuW+qU2A.t+8uOt8suMTnndVEiHhnmKT++c2IhznjRJIgYPlRC618dz85ro7wpBSMyLz8dzc.nTCs1dEEdutK3bLwDCRIkTpyN+DQD87KFbmH8PJTn.QGczH6rytLcQllTq+vUp5fmd5IZRSZRUnKyT2H6ryFwDSzPgBE00UEhHhdNCCtSjdnTRIUbu6cOgP6Rj.z0t1k55pUUVW6ZWfDIPCg2qe1p626dIfzRK85ryOQDQOehA2qm4fG7PnicrCBesjkrjp0iuRkJwcu6cQbwEe05wslV.ADfnetjbxIWWWkpSEWbwh7xK2GEnUI7wGePCaTipqqVUYMrQMB93iOPUWlo7as9Wqumat4J5oSKQ5aj9vrfzGl4S8wQQIxQQIlBJJwTfhhk9Te7TpDP5CyDEdu6C4EVzS8w64IxxNWTPbI.YYkc8twGDU8wn55JPsgEsnEgvBKLgkG5PGJl1zllFK6BVvBvEu3EA.f4laN1yd1inmxik5RW5R3K9huPXYyLyLr28tWMV1JiLy7g3ZW6ZBK6u+s4o53A.De72Ce+2++vUtxUvUu50Pd4oZVwvVasEsoMsAssssEyblyBN6ryO0mqZJ25V2DwEWbBKWb0vaPnuJu7xG2+92uLcmDI3UdkNWmVmpN7JuRmwctycAfpOfoDIRD9WUqqhdvLU6692OQzpVU.rzRKpqqJjdlGb7PQlG83ZbaRL1HXrC1CiczQXk+sBV6eqdh++dgimgF.eBbwZrLJkq.orm8g7u9MPQQGMjmkpP6FZm8vbu8FV091gFNjApS+MVI4lOR+P+Cx7HGExRKEQ2RLSap2v1dzMzn2XPPhgF9jOX.PgTYHiPNId3ANDJNt3fxRjIrMCrzJXUG5.bJfAAqZtOU3w4tycQ.JTBKa8KfFOl2QmN2Iskcf7uwMgYd5Nb68eWQaS3mqR.b+i+PXpyM7Id7JNkzv891eD..t7tS.V4iWZrNpqbcZSFVzTOz51y452Boum+B4Gd3PYQEJrdCL2BXUmdIzv2L.XYyZpZ6282vlQg2IJctdTV12+9BG5wiuCuOsWSU2+8vy5dtH3t4laNN9wOlvxEWbQZL3tRkJwZW6ZQlY9Pg0c8qec3uFdH1DTPAI5X1idzym5P60DBN3PvnF0HQFY7.01VVYkEBMzPQngFJ1wN1A1wN1I5bm0+C.VSInfBF+1u8qBK20t1ULkoLkZ85QhIdejQFYHzZ6t5pqvFassVudTcyFasEt5ZiQhIlHTpTR4dwYkPyO0T015q48fG7.jTRI9n6T.Q5NoIkBJ35W6IVtz+C.iajyvo29sfSCn2O4imVBJKK6bQbK6qQA235psM4Y9Pj2EeHx6hW.4dwKCOmyLgQVo8OLZNW6FH9kFHTTP9Zb6EGazH0XiF4btvPSWvbfw1zfJ7Zrf3R.wsnkBYompF2th7yC4DZHHmPCA1z8d.2+jODFXrlitTv0CGPgBTvMBGV1BegMcncU34F.nnXiEEb8qAkRKVssU1eOE+J9V3y+MPHwfJ90ajWTwB6ibML0wVZcTWURt4ow0qPVIHtU7sH2SeJMu8BK.4DRHH2SeFz3YLc3Xu6tnsWXTQqS+ePMwp1ItAEeZulpt+6gm08bQv8d0qdgEtvEHr7ku7kQIkTBLxHwW9gGd3hBsCnJftlBte9yed0NG02r90udLiY7g5zS6wTRIEz6d2Kr0s9GHf.FZsPsS+SzQGE1wN1tvxFarw0IA2SJojE5+2JUB3me9UqWGpo3me9g6e+DgDIk128qe2p6ImbJL3NU0YfAvo2YDhVkhhKBRS+Ann6bWHK0jgrTSAI8C+.x+52.t+wSGFXhwUpSgrLyF24ilIJ4ApFSFMnquFr4U6LL2SOfRExQgwFOxJ3PQdW7BH+KcQbm+uOEsXs+DLvH0+P.Yd1vPBe0JT0h3Rj.q67q.66aufYt5JjWXAnfHiB4D1EPdWHLT3stAtyG9ovyEMeM1hu..4diHPbK5KghBK...l6WKgCC50gYt6FLxZqPwokFxK7ahGdfCB4YkIxNjfQTolJZ1W8kU7OGTpDI7seOr7W9AXj0VUo94k1T3suERYm6EtLhgUsb7rnU9CKacqdhkyTmUuKPpnD4Hp4tHT3stA..LxdGgCuY.vpV1BXrs1fBi+dH+aeWj4gNLjma1Hwu4aQg2MZzjoNIgO3gc8omvxV1R0N1EEarH2ycV..X+PC.FZg5eHNqZ8KTseMAfZk+d3YAOWDb+EewWD1ZqsHqrxB..ETPA3F23FnsssshJWHgDhZ6avAGL93O9iUa8gEV86f6O3AO.yZVyRTn8l27li4LmOGspUsBRkJEW+5WGKe4eEhOdU82cYxjgUrhkyf60iURIkfzRKUg6LsDI.d6sWU7NoGwau8BG6Q2Hq5agz0jzRKMHWtbXnN1k.HRDIRPiGq16RGYekvQh+vpgrTRFYGRvHAyMGdLioVoNEor6+THztqy7Sgi8pah1tEd5NbnGcEorm8iT2vFfrTRFYc1vf8cU7cesjbyCI9+9QnrDYPholBO9h4CaZu3Vd0xl4EbZf8EoevihjW65PIYjNheoAhVrtUqV.K4EVDRXkeipP6FXHZ7+2GBm5aOEUFSaninAspkv4gMTDy+4qQ9W5hnvHtERZK+AZxjGWEdcKOyGh68cqFd8EeVk5mWUjz211PC5vKp0OHRkgkso0nwi9sqR6aJae2Bg1spCcDM8Kline9ZpyMD11oN.mFX+PbAtRT3suEd3eueXp6MAMbf8C..N1ytowi8CNVHBA2azvFJLwQ6qUtl.PsxeO7rfmKFbpFZngnacq6hVW4awb.MGb+jm7jnjRJQz5RHg6KZdb1VasCsqcZ9VxEe72CAETvXG6XmHzPOARLwjp7W.OhBEJPTQEEBIjPQTQEUE1R56ae6CETlakoat4FBKrKfwLlwf1111hW5kdIL4IOYbkqbU3kWON32Eu3Ewcu6cqv5QxImLN4IOE10t1E9m+4n3V25VU5ouu3i+dHjPBE6ZW6FW9xWFRk9z2m0KpnhPt4lqvW4kmluEikd900euTXgEhbyMWTTQhGnTxjIS3bUPAE7TW+0EokVZHyLU02TUpDvd6sGlYt40Jm6ZClYt4vd6sW3ClnoYXl5SxLyGxYWFpFiMsye362+MvLe7E..YcjCiruzUqTGi7uhptffwN6hZg1KqF8lCAlzXWA.Pl+q5823D+0s.44lM..ZxL+T0BsWVNMv9hFN9wB..YomFR6.GQsxjzl+CHK8z..fKu+TUKzdYYfol.uW77fY91B..jwe9Wnf3RPqkuT4dlSiGbrPdhkSWorjRv8VwpfBoxdxEtFRwolNdvt1E.TMdB7ZQyUqs5rINZOZ1x+RXns1A.fz17VgRc3NvWeU0weO7rfmKBtCndKhW9f6xkKGm7jmTs8Ku7xUXvpps8s6cu6vfx8jpLzPOA5QO5N7wGuQ+6eewXG6nQe5SufWd4I5e+6OtzktjNW2UnPAV25VGb0UWQKaoenu8s2nkszOz7l6KV25VmF2mxG9tW8p2vbMDvyJqrBAF3xwa7FuovWkN.AKuPC8Dn+8u+vSO8.8pW8.idziBCdvCDssssAMu49hUspU8D6VN6d26Au5q9JvGe7F8su8FidziDu7K2IXu81gN0oWB+4e9W53OUDKpnhBd3gGvAGrW3qMsoMowqgJ6uWF9vGNbvA6wLm4mJZ86XGaW3bEP.ATkp2UVYjQFOZ9CWUPV2bysZkyasIUWSZOnd8oYKAEJThG9vG9jKHQUQFYkEviOalPhIl.nTIRa2+YkZ+kmSN..vLup36LmDI.dtn4COW5WBmdq2Tz1TThbjyINA..rnUsF12kW9Idda3fFfPfwbOWXh1lR4JP1GW0GNvLe7EN8586Id7jXngnIy38UUQUHGYbzio0x1vwOdXdyU0EBS9mWCJNM0GiWkWE85JRL0L3wRVLfDIP58S.ItgMWQGIs78UOdXvm.Jko5CNz3o8tOwA.rAlXLbb3p5dOxyMajaDQVsWmpM8z92COK343f6mSzxW4JWA4jipVSv.CL.N3fiBaKnfBRTYuvEp3tIyYNyYvPFxfvoO8oUqdnToRDTPGGCX.8GW+5pOPgzjksrkgoO8OPsAX58t28vzm9GfYMqYo193hKtHZ4yd1yfBKrP0JG.va9luwiFbpp9ZfC70UqLqZUqB8qe8AAEzw0XqqGWbwg4N2OG8u+8CYkU1Z777we7GgQMpQfKbgKn11jJUJtxUtBFwHdarxUtRMt+ZSlYlEF5PGhnwmvblymioO8oKpbU2+dotPlYl0ilqyUsrCN3PcaEpFPoWSkdcJ9+uUOJ09ijUVO8SodDUQLyUmgMcuG..nfqecHK6bz880mloZ+t0sdhsTr4t4Jro8sAMn0h66y4bkvE5G5M3U0sIv.CLwXzrU9Unoq3qfKSRb2ZImqccH+QytY1zkWUm6RbV5smvDWZL..x8LmU6EThD3wm8oPh4lCEEV.heEe6S8G321N1NXW+G...d3A9aj8kqZCrymV4bVUYWLz5Fn1umzlFNn9iltBU+tvrF6xSdGpm6o4uGdVvyMA28wGePSZRSDVNpnhBYlYVBKW1tIS6ZW6v3G+ieglfCNXQGqxN0RBHN39Mu4MQ.ADfnPxMtwMFCcnA.2c2cg0kUVYgALfAfniN5JrdGRHAi.CbYUXY99u+6v+7OGUz5dkW4UDsbjQFI5ZW6B18t2CxMW0Go6UjCbfCh4N2OWsmTj95quvLyLSz5BMzPwG7AuuZGi0u90iUu5UKZcRjHAsnEs.lXhIBqSoRkX9yedXCaXC5TcSlLY3cdm2VzcXXBSXhXoKcohJ2SyuWLyLyfEVXon5I.fQFYDrvBKgEVXoZ+bnlhpOb4i69H1Ym9+rIS4Ymc1Vlv5O9ca0d2wptMLeNZXlifnpa110WU02nPNx4Jgqy6mksR0.ITdVYhnlyBfzGT4uCQ4ciaJ78l2TO048yLWcAMnUsDV0BwCf67B+FO930rJ2Xzwzlpp+kKKsTQwomg1KmKMDtLk2C..EdqafT1cU6t4VVMYJSTU2IRoRb+u46PI4p4YVmZJJJQNJJJUuWmotq8oHxxy.SLFMnUsDMnUsDlXuc0TUuZUU0+d3YAO2DbG.nm87wArUpTon.3kM3de5SeQe5yiu0cm6bmUn+MWRIkfKe4Ky59DOM...B.IQTPTIrM2byMzrlopEMjKWNFxPFrnVfaYKKPDWbwicsqcgnhJZ7se6+SXaokVpXzidTUXcNgDT0O9VxR9Rb0qdMb8qeCrrkEHL1Xw8osu5qDGtucsqch565.pl0bF0nFAbwEmQW5xqhO9i+Hb3CeDHSl1aEF4xkiO3CDO0Y9Zu1qg6bmnvMtwMQRIkL9xuTbH4cu6cgie7GeWJJrvBwblybDUlANvAg3hKdDd3WGIlXRXEqPbqruksTQ2JxGaFyXFHjPd7GrZfCbP3m+4eVsqgmleurm8rGjUVYIpL..iXDiDYkUVHqrxB6e+6WmpuOsxO+ReiBUy5J1XiM0Jm2ZS1XiMBS0kZS8otKSAZYZwinpSVTl.txdf1CrVdMbvC.VzFUSDCEFYDHhILYb2O6KPp66fH+niCJ0g4e6RJSibUQyo35pRx7wuVrkUxf6lWlAiurmvCPJm5WufUcRU25I8s76nfXe5dvCZfol.29rYBXngnjGlAt2O7yO4cRKJ4gYh7iJ1J7qhRJEw6SVYK7hel5o6Z5vVmppbMUUUU+6gmE7bwrJSo5YO6E17leb+d97m+bne8quPlLY3Tm5wyEp8su8EcricDVXgEnfBJ.EWbw3Lm4rnm8rG35W+5hZ01x9gABN3PDBZC.75u9.wrm8rEUGl9zmNBN3fw92+9.fpolxae6aiVzhVn058+4+rLLyYNSgkm8rmMLyLyD0mqu5UulnoMOiLxH7u+6wQu6cOQrwFqnimToRQXgEFBKrvvpW8pgs1ZGF5PGJ9vO7CQaZi3AbzwOdPpMPb23F2LZRSTMHlrxJqvm+4eNBKrvvANveKTtst0eG8pWpFrQG4H+CxM2GeqrbwEWvF1vFf81qZzpaiM1fO9i+XbvCd.DZngB.fyd1yh6cuDf6tq89v829seK90e8wsLem6bmw1111TaF9nl52K0EJn.wc2ox+A3dVP4ulpuO6xT9emPTMAiZf0plm1kKGxxT26dVFXhwv6k7EHtkuJj64O2ilmyutvb5tAlaArn0sFM3UdY3P26pFGnikFb2H6bnZY5UT1CezwydGqzGOy85wynK5xOGb+i+PD46GIjmUlH9kuJz7e7az57.utvJe8FNMxQhz+8eG4dpShLBtSvgdz0J8wIyCeHj4gOTEVFKZk+vmU73FFSZY9.Tl0TOqzmyZZUkqoppp5eO7rfmyZw8dHZ4RGjoW7hWTnUyr15FfW9keYXpolJZlnInfTMPZJe2jorA2O1wD2cU72e+wCdvCT6qVVt4N0x9gFJOas0NQg1K0LlwLfiN5jvxETP9HlXDGP2M2ZBN1wBBie7S.Vas1eHXjUVYhMsoMht0stIpkxA.N9w+WQK2+92egP6k0jmr3m3bG6XOd+N4ICUz1d8WefBg1Kqsss+.m+7ggye9vv4N24QCZf1qy6d26Byctetvx94me3u9q8qwAfaMwuWpqHSlzxzuuUpV224YAptlTBkJUp1rKS8Qxj876SwWp1y+O6ceGeUUe3+G+84dSBYm.jDHrRHDFxRDPbhHHJ3Ds0ANpVqcp01e0UqipVqJV0Vqq1ZQas3pt951BhnxvACYHf.xHDBirWjcx8d98G2jaxMq6MI2j68j754ihM2y8y4y4yIWR388y8yvvPxng8djlsRm4M1BKTk1c+6z3d1+oRXgKTglTiqi1NqrBU15VqN7e8w029C+Iprc0xEmfF1ISM5W+572.sR8YKhN9PLromiYsd+6CgFWLZX++9UtlXoYkoNz+5E5vWylK4EdwJhw5pScN7S+2a2gri+jYS9zws0CM7LCV0U94Aqt9T839fG7f0DlvDz12tqwq25W+5koooGCSl4Lm43diYZdyad5+U+6drggiQyWQYZ5aFn4KofOzCsH8POzh7Z65vGtsWJBmT6rYFLwINQOFlHacqasEqo2Ce3CSKdwKVO4S9j58du2Wuy671ZCaX8Ze6aesn9pnhx0BVv4qO6yVol9zmdqdOM1wN1Vssz7dltoqu0Ymsm6HdiYLioUqiDSLQkXhI1pOWycG2ws6wiu4a9VZyw6c2wqKHPJvsaoBDn3nxpjY0t1cOCo+ctwob+RNIMzq9x0Pu5KWUmSdprucW5ne8FUYqe8xwQKUNJtHsu632qT+C2shchM1QFgT+Nybs4lsbVSsc4M8lPqu8WyQNRGt9prIcPUn9330N9YLUUx7OaU7+6CUgu66n3NwiWwdrdeiBpsXXyPi31tI8c2vuVNqnbcfG4upz+S+wNzmLXhW4U1gWyyCsI+abUs+t1v9o6Pm4dpyxe7yCVU8o5wcIWAyaPwEWj18t2sGA2Oqy5rZ0u9q+5uVkVZodrwKMwINQMnA0XOWTPAct20cy2sVapTSss2nGRM0T83wYl49ayxFd3gqK4RtX8hu3KpctycoCcnCqkrjWTybld9Q7USM0n268ZbHuz7k5t1Z4Gr48BuSmNcugWUTy9XrRt9UE.+oe+u+tZyu+2c75RfRyGFI9i0+9fMs7dxWlfpANgFZuuO0CD7ooiM3P7CSvv9MnD0.m8opTukekF+K7uz.uDWAtLqrRc3m9e5QYaH3tb5TUjo2W+z8F6MD.0oCUw9OPG5bqbuMI3dGXx4O7lLwRy5Q+qptx6Z68Fgm7fTx+LWS90J112nb9+59mmSdDbuKNd8s572+7fURepdbWRZNyYt5Iexmz8iW4JWo9pupwkUpy7LaLrd5omtF4HGoxHiLjCGNz69tuqGqdIMeYfr4KMeKXAWnl8r8b34H4ZiBpoqBISZRStMauYjQK6Y7154RKsQ0lks4RLwD0BW3koEtvKSyd1mtGKQhe9m23PDo42SG3.s9ujsoigbIWa5UwW+urOgDRvim6.Gv++KbNxQNh9Y+reldi23MZwy0c75RfRDQDgJu9+AGSSWgb6MsALI45dJXebs2TQFYuqu+ifSk7EMtDFG83Z8O4yNKagEpF10dkpt7KPk7oqPUmUlxQEUJ60+2siHsTcW1JyX+J5Q201sliL8QoF5VjJ2aFJ5w36+aWUU+mVrsnhV8aP91mPqTiSrz8dy2ppqf7TVO0ynQ9a+McjlcKj37NCU5WsNU1Z+Jk6RVhhcZs9Fwn+h8v6mBMoAoZyMGUS2v+NpUR24OODrqOWv8S6zloBIjPbuantnE8ftmroidziVolpmyX94Mu4o+w+3eHIo69t+8dzieyYNy0ixNzg5YOIOyYNSc8W+02kZuaaaayiIcZCLMM0V25173XSdxMFz7wdrGy8lgjgggtwa7FaywC80e82fGA2a5jQs42S6ZWs9l2vN2omGePCZPtmjnIm7f834Zqcl0RJoDkat4V+Xa1TCYHCQwDSLsZYunK56oe3O7Z0BVv469Xu669N54dtmSW20ccdT1tiWWBThJpnT94mu6w9cIkTphsW1JKSI0ul75J7dv+vhIxHiJP2DPubNppZU7G6ZdV0uTRUQLhVNOiZM0VZYp15+TSiHkQ302LbrmzLTIe5Jb0y56a+JlI5ZSLJ9S730grYWxoCU92rs1cWNsoxe4epp5fGVg1+3zftvyy8wi+DltNTHgJy5pUGcyaQId1yscpklb+TTIplrb04Qwb7GuW27gZtlNwRKckelJ3DmQG57aMMcxudf+zeVC+l+Uc45r8DyIdBpv28cUs4mmpN27U+RJAudNUmWAJu528ZGvrOMEYpV6MtuN6OOzaQetgJSLwDilwLZ7GVO3AOn6utoCMlFO17a0xFZngpYNyS0ix1zkPRIoktzk1pez94kWdZUqZ0ZUqZ0ZkqbUs6Xot3hKVOvCzx0w8G9geXUXgMNDPhM13TJoz3xC0y+7+acG2wsq63Ntcc629uSu7K+xs40noehCRdN7bZ98zG9gen1eyFaclll5e7O7bYwpoexEyd1d9IS7tu661p2yW7E+80Dlv30Dm3Dzjm7jZyMxIIo+ze5g0Ye1yW+hegmqY727MeS569tuqYsE++qKRR6d2eW697cGhMVOCoGLNbd5prZ2SwFaq+lKA7WN3hedUad4JIo9OuyzmOupN3gztu9aT695uQUx52n2KeS9c6Mc7iGRLQqHquigJ4y9LeZ3xT0gNhNzS7jpfW+0jilsdmaOxHTTSaZRR5nqY0prc15clSycnE+ucOAMie1yxmNmlK4K666dhkdv+zCqJZiNixW4ZxudiRRp5LyP64+WKWLI7mh+zpO2gooNzy979z4bjm+EUAu9qoh9fOnC8oTDrpy9yC8VzmK3tjmqDLMUyC3IIc5m9rZ0dpdFyXFJ5nitEkcnCsw242G+wKW24cdmdrNoum8rGM+4OOM24NGM24NGcVm0b85Fhz8e++Qcm24cp0t10p0u90q69tuacu2683QYlV8+RvFuW77Mg7q+0+JsnEsHkSNMNQQyN6r0cbG2gd5m9o8nrW3EdgdbOMjgzXOVeziVpt5q9pbOAeyO+70ce22s9nOZYdTGW4UdUt+54N2yvich1hJpPcMWy03NfcAETfdjG4QbuTPJIMqYc5Z3CuwMLq1xC8P+IOlXrUTQE5pu5efGeO2e85RRMYkXPx0JLzK7BufJnfBTEUz0Fuj9plOAbyuW35WqU6dJ936aM9JQOGmUWi1+i7Dp35WjDh3XFuR5BNWe97iY7iUgMTW8tZtu5q2t6bp0VZYp3Ow0hcPHCXfpeCJIOd9g9StVWK+dNcnL+iKR0TPauD7UWYUnrdh+tjCGxHrvThKnks4g9StV2aa8Yd+KRUdfC0t2KG4+9lpj5WLFhd5Guh+36bCKEC61zHtsaRFg6ZX.4vOzQAwOioo3O652wwa1FUn+VLierJlSwU38itlUqrei2ocKeQew5b+8s3m2YI6chUxmfEc0edn2h9bCUFIWSP06+98bcDMrvBSyZVmVKJazQGsNoS5j0JW4m0r5nkg+sa2t96+8mQWvEz3GI3i9nOh9a+s+lNgS3DTwEWj1111lGAFupq5GzlqTKRRCcnCUG4HGQOxi7v5QdjGtMK28bOdFj+1tsaSKYIKw8lNTkUVotm64t08bO2shO93kggsVsmMSO8z0UcUMF5tg6olNjT9pu5qzwcbSQImbxtW8XZpK+xuBc5mdi8FRngFpdrG6upq9pardW4J+LMwINAMjgLDkSN4zh53G8i7b3tzVhHhHzRVxKnS8TOE2SpwMtwMp69tuasnEsHOtG5putLgI34xEoooottq6GIIoS+zms9nOxykcxtCCXfCTFF1jjque074VPuAVo6Ia1LZ0k1T.ehozQ+VO6wWmUUkpI+BTE6Z2pzUtR4r9kp3PG7PTJ21MICacrgNV+m+YobdtmSUtiuU67meiJ4e50oXl3DTHQGojjpq7JzQ2x1zge5+gpqHWuo4DW3kJC6d1udQNxTTBW7kn7e0+qp4vGR69WeKJoqbgZfmwo6dUgo1RJUkt4spr+mOm65Z.m24qPiskqU6gOjAqjtlqQ4r3Eq5Jr.sma91TBeuKRIddy2i018x14tUN+22PksNWioY6wDmF9upqMTGCO4Aoj+o+Xc3m3I8dg8QC+mdsp7MuYU6Q7sUirZyufV7ZeqIxTGg64ZPCF1u3mnuaqaUNJsDky+5eoJ2yd0fuhKUQLBWc1koCGpxrNrx8MdKUR8Kk01iJZMnK5B5f2UcLck6II0i7yC8FzmL39IbBmfhJpnU4kWl6icxm7onnhp0GqpyadyqEA2a9DSsAye9yS+k+xioa61tU2ii9Jpnb8oe5mzhxdFmwbawt7YyMm4bFJkTRoEuQil59tu+nN4S9j83XIkTRZcqa85ptpqnEq87MrZuzbCe3CWe3GtTOlflRRm8YOe8m+y+E8a+s2l66IIWSHzl6rNq44wj+sAKbgWl14N2gVzhdPOFlJMe3nDRHgn+xe4wzBW3k0F2sszTlxTze3Obedrtt+XO1eQyady28afve75R5omtt5q9Z7XS7pm1fGzfT+6e+UAE3Zbtme94qJqnBEQjQFvZS9SUVQEJ+7yWRF0OdbCt+kx8u+CPIkj0+idFAHNcn8cK2lWKVLm7onTtoar0C63EC96eAxzgCk6RdAUa1GQG39teIIYO99KC6gn5JHO2k0HjPUx+xquMGC6C8ZtbYX2lx6keYUWg4qC+jOkN7S+2TnCLA4r1Zkilr6TaDRnZP+3qSC5BN61tscQmmrGVX5v+8+gbVdYJ2W3ETtuvKH6wFmrEUTptBxWlMYUlJrgNLk18cOJrD55uY4Dm+bUoe05c+FB5pr0uvzHtsaV68VtMol0QTslhW1RUwKaodsbi7gdPE6jmfGGKrADuR+u7vZe208pZy9HpzUsRU5pVorEQjxdbwq5xOO2qU9RRgOlwoTuyayu78s1SW4dRR8H+7PuA8IGpLtFe5dtLH1Ziu8FLu444PnI5n8bbx2b+xe4uTqXEehN2y87Zwt3ojq0B8W3EdI8ge3G5SafN20ccW5Ydl+oF7f8bRdNgILA8xu7+U+te2uqUOuTSME8oe5moa8VusVLLOZfMa1znG8n0sbK2p1xV9lVL4bavMdi2n9jO4S04e9Wf6049lZ7ie75we7mPu669ts4Fmz8du2qd+2+C0YbFyU1r44e0K5niQyblyTu268A5m+y+4s542d9M+leiGaXVNc5TW60dMpnlrSy4Odc4odpmRO4S9TZpScpp+8uweIXaMIZ82BIjPbuDj1vDMau6ssW4grZZ3dwprhxjTRI0p+cIfNKiPBUglXRJhwNNMvu+2Wicw+Ck1ccacoPJIeoWjF4Cc+peiLMWC2EI4n3hbGZ2HzPU3iJcMx+zC50Id5PtpKSo9GuOE4jqeW11oSUad45NztQXgoHF230n9KOb6FZuAIdtmkF0e9gcM7OZnsUZIp1ibX2g1CY.CTI8C9AZz+0GQ8K4jZupqCYD+leor6GGpaQO1zUhKbg9s5q8D9PFrFyi+nJgK8Rk852fEcVYEp1rOr6P6gjPhZfW7Eqw7meP0uDGX6UcAs5N94AqNiZpo1fuEF4dQJpnh092eFJmbxUIm7f0nF0nZwXiui3HG4H5HG4HZXCaXJoj5X+Br7yOesssscs8suMEVXgoIO4IqINwI1leRCskhKtDs+8mgNxQxVwEWrZXCa3ZDiniMK0KnfBTlYloxM27znFUZJ8zSuEqbNcm7WutTSM0HCCiVr9p2c5a+1cnUrhO18puyvF1vzk0A9DJBl8p+2WUG7fGTFFF0+Ga0++K2GyEilEtOvjzeNyY1ZzidzAjqMPmgyZqSUl4ATE6MCICaJxzGohLkg2gWgVjjp9H4pJy5fp5ryQ1iHbE4nSWQL7g1hgYiup1RJUUt+CnpyIW4nrxUXIlfBaPIonF0H6z0YeANqoVU9d1mpN6bTckTphXDCWQMlQ4wPNB8dPvc.KlxJqL8tu66V+xBoqe785ttejh2hu6wUbQEom649WRRdI3tQ8koomcOev8DRHAM+4OeEUT8NFlR..H3GuEV.KlniN552AacEh0zzTqYMet2NsfdqYMed8uQDW2WMDXWR8neZL9pgMrgRnc..zihf6.VPiLszTLM4iAcm6bmJmlrwYY0jS1Yqctyc1pOWPXlcESLwnTRI0.cy...8wPvc.KngjbxZDiHE2CgDIoO6yVoWNqfWMz1abXwH0dC+k.cX9QLhgypIC..5wQvc.KHa1roQOlQq3hKN0P.2CbfCnL1WFA1FVmPF6KCcfCbf5eTiCSlFeb8eUalVumMEebwEmRKsQ0hUFI..fta7u7.XQMrgNLkVZixiIt4xW9xUUUVYfto4yppxJ0xW9xaxjQswmqgdd2y.6A9wMSZokVKVZVA..5IPvc.KJa1LzDm3D0PFxPUCAZKojRza+1uiL6l21s8GLc5Tu8a+NpjRJo9izzUKlFW8XZt.4vjYXCaXZbiabxVevcqO..D3Qvc.Kr92+303G+3UTQEo6ds9.GHKs7k+wA5llWs7k+w5.GHqVY8YukqlLMcYfLPI5niRicriUwFaOylsE..PyQvc.KtwLlQqwMtiw8Xt1vPZyadyZSabSA3VVaaSabSZyadyMo2ya4jRMPOATaJa1LzXG63zHGYpA3VB..5Kif6.VbgDRHZ5Se5ZzidLMYrhanUrhUnMswMFnadsvl13F0JVwJ7ns1zwoeCg28r21U8ecfoMOlwLVM4IOYYuSr6RB..3uPvcfdABO79oi+3OdkZpiTRtB65zoo9nOZ4ZYKcYAEi4cSmN0xV5xzG8QKWNcZ1rUNlltqnZzJAzCbqnLokVZ5XO1IqvBKzt8qE..P6wnlZp0LP2H.f+QN4jq9hu3KTlYteYZZJSSISSmZDiXD5htnKTgGQDAj1UUUVodq25s0ANvAjggslzC6s7qkLbO4O8bru2Z0b2av8TSMEM8oOcMvANvt0qC..fuff6.8xbjijsV25VmxHi84Q383hKNMu4cVZjokVOZ6Ii8sOsrk8QpjRJoYA0a4eZbrt2xIkZOcv8zRKMMkoLEkXhIzscM...5HH3NPuPEVXgZsqccZW6ZmdDdWRZDiXDZNyY1ZPcyqE44jc15S9jO08lqTqEZuwdW2yw5tqxG3BsOtwMNcbG2TTrwFa210...nihf6.8RUUUUo0u9MncsqcpidziJSSIISY55Kz3F23zocZml5+.5ue85VTgEoUspUoctycJI0hdRu0CsqlbbOGhLtdbqck7+A2iIln0XFyX0jlzjT+5WX985G..nqff6.8hUWcNzt10N011110QNxgqu22aL7tjzvG9vzDm3jznGc5JhHirSccprhJzt28dz111VUVYcP2G2yf5M1q6MOzdSGW6Mbd8zg1G5PGpF23FmF4HGoram4sO..B9Pvcf9.Jpnh0V1xVzd26dUokVRK58cSSWqxKIjPBJkTRQIjv.0.Fv.U7wGmBKrvTXg4p2mqolZT0UWsJojRUgEVfxO+BTlYloxO+7cWGRsrW1ccr1NzdGaHxH4OCtGWbwozRKMMtwMN1bk..PPMBtCzGgCGN0gNzgzN1wNTlYloJu7xZQ.dI0rut0qqlFn1y0Y81dBl54vgo8Bs653M+5zjqnueS2NhN5nTJojhRO8zURIMHO5we..ffQDbGnOFGNbnCc3Cq8tm8prx5.pfBJvc.dIOCt6KZ9R1XqEX2ymqqDZuwmuyJgDRPCaXCUojRpJojRz8NNK..PvNBtCzGVEUTo1291qN3AOjxImrUgEVXy5k815WOzxcyz1Znt3sdYuoma2Un8ANvApjRJQkbxIqgO7gqvCO7NU8...DHQvc.HIoZqsVkc1Yq7xKeUTQEpRJoTUd4kopppJUc0UKGNbHGNbXJ4Yn6F3Y371dnxz7y2WCs2ZWyFXylcC61so90u9ovCObEUTQqXhIZEe7wqALfApDSLAERHgzA9tA..PvGBtC....XAvf6D....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBff6.....V.DbG....vBHj.cC..AG1WoYoMlSFJiROjJn57TkNKQ0oxjosZjrUa8kxYclRNLjQW+2cXZ1kqhFqKC6RFxzYHxvLLEhYzJR6woAzuDUZwMTM0AklRK1g6+td...A.F0TSs9w+0S.Xk704scs5CsUkUE6UUYjijMGc6WSSeMvd6TLesJLLZ3DrqvcNHM7nFkNsgMIMsDmnuUA...AQH3NPeL4UYAZ4YsAskB1pJyHCICueN9Cc1.6s8o4s5q0uwLLjhwbjZxCbR5rFwwqDiXf9V6B..H.if6.8QTT0kn2e+qQapvMppskcO501mBs2jhzxh27z793EtEY287.gaNXcbCbZ57G4op92u37wJE..Hvff6.8Arrr9b8oG5y0QMxrG8510Bra54WZXnDiLYM53FiFZTCUCMxAqDiXfJR6QnHrGtjjpzQUpBGUp7pr.cnJxVGp7CocWx2o7p3HtpbOxs23Ch0HEM6gdJZ9i3T6D2k...8LH3NPuXGt7bzqr6ko8U0FjL59G+5MkWCs6s.60GVeDwNJcJC5jzzS73TrgFSmpsTZsGUaHuMoOOmuTGnz81rP7F0+esqQEwwqKeLySCIpA0otN...cmH3NPuTqOuMq2beKWGU6uG+Z24Bs6Yf8IlvwoKMsumRNB+aH5iTYN5012+m1V9apUCvGqQp56OpyRyHoo3Wut...cUDbGnWnOHyUpke3kqZsUTO90tcCs6s.6RJk3Fst7QcIZTwNxtilma6szLzqr2WWYVxtccflDfOLy9qyZXmkN2TlU2Za...niff6.8x7e2yR0mm2GKm1prG+Z2oBsW+WGa+FftxQekZpIL4tqlWqZi4+M5k18KoRqtPWGvv0+wlYD5TSZt5xG8Y2i1d...ZKDbGnWjWauKSqJ2kISaUGPt9sYv8F5T8VoW1MMkRItz0uYR2fhNzn6tahspxpsL8Xa8oUlkrGWq8602661LCWyZPyWWZ5yKfzt...ZJBtCzKw6s+OSezQd+.ROsK0ACs2jiMijOUcci4pjca16tahsKGNcnm66dQstirlF23lLjrYFol2PNOcAib1Az1G...A2A5E3qy+azKr6WKfLl1k5bg1MjM88R+R07G1Yzc275PV5AWg9+1yqIS4z0ALjB0b.5pGykpom3wFXab..nOMaA5F..5ZxprinWeuKyxDZ2zTxzootnQE7EZWRZ9C6LzEMpKUlNMc01Mkp0nP856doJqxNRft4A.f9vH3NfE2qsm.yR9X6pcBsKSSMigLSc1CO3KzdCN6geFZFCYlRlMFduTse8p69iBzMMu08nIC..f.PRDEDU..zGFA2ArvVVVet1WkaLfc88ocF0lEZOk3GsttwbUc2MstrqaLWkRI9Q6Q388U9Wqkdf0DnaZ..nOJBtCXQUT0knO4PetjsZCzMEO4Qus23XZWllJtvGn9MS5FB3SDUegca10uYR2fhK7A59iNvznV8IGbMpnpKI.25..PeQDbGvh5cyX0pLiLCXW+Vs21awPjowGaZZpqbLWY.aIeryH5PiVW4XtRY1PutKoipL06ruUEXaX..nOIBtCXAUX0knsTzlBzMCuvygHyH6+X5w2bk7GlZBSVir+iwigLyVJXipP50c..zCif6.VPKMyuRUaK6.102681tmg1kjV3ntzdplmem61d8g2qxHa8+x3KBrMJ..zmCA2kTIkTh1912t1111lJt3tdunYZZpcu6cq8ue+yvXHu7xSaZSaR6ZW6RkVZo9k5DVaaovuIP2DZUsHOuooLMM0jRbZJ83FY.oM4OjdbiTSJwo45MrT+M4VJH370.fdZkV8QUlkbPUbUk1xeGPGjooTgUVrNPoGRUVaU9mFXeD9yWGPvqPBzMf.ksrksnEu3+od8W+MTQEUnGOW7wGu9deuuu9o+zepl5TmpOUeYl4AzS7D+UsoMsIs4MuEUVYG0cccrG6wpoLkona9luEM3AOXep99rOak5u+2+aZoK8+oJqzycByILgInK6xVntga3FTLwDiOUen2i0ly2nxBRW9Gc+fFy2JCCCcoi5hBDsJ+pKcTWj1ZdesjbcucTi8quJ6uQm3fsdC+Gftpsk2Nz6tq2S6LmsoZqqw.18KzHzjG5z0BFy4qQ0+T8o5pVG0oUdf0nOZuKSGtnLkCm0494BOrnzjRdp57FyYqwLfza254Syb05Sy3Skggz0O8egFTTI50qcNkmmd50+2kjzUer+.kd+8rCFt2Ud+xooScLINdc4S3h8o6mWY6ut1Qd6PCKtgqe5wcssZazWkZ+SU+ni8paymuy95v+4adIs2B2qO2NZp4l1YnSaDmh6G2v2i7UW6T9gZjwOB2Ot89dRH1BQ8OhAnAF4.zjRbhZhIN9F2Yq6ipOWv8ZqsVcS2zuQOyy7LsYYJt3h0+5e8b5e8udN8C+gWqdxm7IU+5W+Zyx+oe5moq3JtbUPA42p00JW4J0JW4J0q9pupd0W80zIcRmTaVWG8nGUW8Ue05C9f2uMKy12910ce2+d8Zu1qp25sdGkRJinMKK584KOx2JE.+EWs0R.Ya0a6oD+nUxQ5aug0fYIG4f0HhKckYw61029MLzWd3sSvczmRsNbn+55dBswC7ks5yWcsUp0u+UqMk0Woqc5+LMmTOs1s9xrjCpGZ0KREWdds5yWUMkq0m4p05yb0ZFodZ5WN8egB0dqupTkcYYqcmy1jjziu1mP2+ruOYyKo7pptpceNGs5i1hm+6xYaxzzo1ctaSiYfiVSavde2SNyhyT6NmsoZcTS61F8EsUf3t5qCYTTFcn1QSMoAMIOdbCeOxWUVMk4wi80um7d5MT+idP5BOlKRmUZywmud81zmJ3dkUVoN2y8bzZViuuNL+7O++V6XGeqV5RWlhJpnZwy+rO6ypa7F+kxgCGdstxN6r0bm6YnW5kdEcgW3BZwyWXgEpy3Lli1912tO011111lN4S9jza9luoNwS7D8oyAVeYUQFRASqlhsQus2P.+SYvmb.oY0c3TF7IqLKd20OjYLTVkuu.cSBnGScNcn+vptOs2b2gjjhMxApyYrmmF2.GqhO73Tlkjk1cg6VexdVtpn5R0hW6So8Vz9z0MkqoUCPu871kdjU+fp5Zc8oJOxDGmlW5ySCO1gonCMJkWE4qsk210Gu6kpxppDst8uJcOkmq9Cy5tUn1a+3KYj2tzaty2VWxw3m9z9Lkdl082zed9+EESXsLKPGkggMc9S3660xMnnFTKNl+30gYk5rzXSXrsnt2ewYpu4fqSRRycrmmhLzHZQYlPhiuUaqoOnInw2FOmm2SI0pGu09dRU0UsJnhBTFEtGUXY4nhJKG8uW++PaOuuU+xo+y85eOn2n9T2w20ccmsHz9.Fv.0O9G+i0wdrSQFFFZqa8azhW7hU942369esqcs52869s5IexmxiyM+7yW2xsbKdDZericr529a+cZhSbhplZpQacqaUOzCsHkYltFu60Vas5ge3GpUCteS2zM0hP6olZp5m7S9oZLiYr5fGLK8Ue0Wo27MeCUWct9nDyKub0YdlyUe8WuQMlwLlt12fPPuCT1gUUFGIP2L7N2c+tgN9jNt.ZSwe53S53zKuyknFd2IUZbDk4QOnRIlgEnaZ.c6d8c7VtCKNggLU8aO4awifSCJpD0LFxT07F0Yo+xW9WTF4sK8Ie2GpgE6P0YOpyzi5pp5pVO0ZebUcsUJCCa5Gc7+bM2Qd5dTljhJAMgDGmtvwb95g+x+r91CuIkQd6Tu71eUcMS9J8Z68s21qqoN3iymGxNdyQqrH821vyne6IeSc45xvvPW9DtjN045OdcX1oLyVst+j8uJ2A2WvXOekPD82maWSHoIpENdu+lQZKd66IaNmsom8q+mpfilsV29Wkd1PBW+ho8i6zWOqp9LSN0u7K+R8TOkmAuSKszzN1wN08e+2utjK4h0Eewee8G9C+AsyctSM1w546D8YdlmQqZUq1ii8Nuy6nJpnb2Od3Ce3Zcqa85ptpqRSYJSQyXFyPW20ccZSaZyJszRyc41vF1f18t2sG00G+wqPu7K+RdbrS7DOQssssccq25spErfKP2vMbC5EdgWPe3GtTMfALP2kq5pqV2y8bOctuw.Kk0cj8HYy6e5N8zZwJIS8RLxAqXCs2y7vH1PiQI1jg8iob350Dfd4xs770Gri2RRRCc.iT29obasYuclPD8W26rtaEc3wIIo2Xqupb3zygRwKssWUEWtqgW5OXZWWKBs2T8KjvzcbJ+VkRBiVRRKamumxrjC501rSm0omXsOgp0Qcdsr9pMm0WoOY+At8wA+8qCVISYPSTOzbeHMhA5ZtNrp89QZiYuk.bqpmWelf6O6y9rdL1biHhHzq8Zut5e+iuEkM1XiUu1q85JxH87iCawK9e5wiad36y3LlqhHhV9wJEczQqG7AeHcQWz2y8e9tuyyy8e8udNOdb7wGudgW3kTXgEVKpuS+zmkdpm5o83Xuy671phJpnEkE8tjQoGJP2D7TarxEzvFVzX5+35YaO8.FS+GmGCEnLJIH60DftAq7.qVNb3ZWZ9GNkenraq8iODl8P04cLWnjjpn5R0NK36b+bNLcpOe+eljjFw.SWyOsyr0pBOX2lM8Sm1OUxvPllN0J1+mzlkMzP5mtkS6NjLjxsjCpm+adw1rrlM4WhY1V+BMI88l7UnTSzUG5sjM9bJ2xa4bZqw5w60Wmk+70AqnnCKR8qOgekBwdXRlRuytd2.cSpGWehf6UWc05cdm2wiicu26ePSdxs8jJ6XNliQOvC7.dbr2+8eeOVgWRN4j834+xu7KZwJ.SC9deuKp9Impq+btm64394prxJ0G9genGk+AevE0tS5zK7BWfF5PGp6GWWc0oMtwM1lkG8NTP0s9D3JPpo8vdSW21kjFZTComuA0Myi6ISSkeU4F3ZL.8P1vgVujjhrewnIl3w3Smy4Lp4o6ZN2mtq4beJ4na7Sp5axc6pxpcMAEOggeR97pDRZwmhRLFW+6tan9gyQaYZIOEMqzOKII8I69C0lxYq91EoMXyvl90y3FUXgFtpt1J0SrtmLfrjK5OecvpZHwLXcho5Zn9r6b1tJo59VKS18IBtuoMsIUZodt9rOqYMKuddMuLkWdYZCa3qc+3S9j8bR2sqcsKMyYdp5Mdi2TG8nsb1o2V13F2nGC4FI0tq7LRRgDRHZKa4azgO7Qb+mYLiY3yWSXMUgyhBnW+1ZEkoggIiGkwzTCMpjaixacMznR18aNwzzTU3n3.bKBn6UcNcnCTnqgDVxwMbe97B0dHZBINNMgDGmFPDM9oausbabtbkV7cr82ggGeJRRpnxxU4WQgsaYu1Ie0JwXGhjoz+XcOsJqlxa2x6MCN5jzUU+x63dycG5s5g6sW+8qCVYm7vbkQxzzo1Rmb0wwppOwjS8vG1yIymc6103Gu2m4yicriUgFZnp1Zq08wxN6Fqqi63NNkVZoo8suFWYI9lu4azUbEKTgEVXZJSYJZ5Se5Zdy6r0bm6YnPCMzV85jc143wiCIjPznG8n8Z6K1Xi0qkA8t3PAQCGp1o2lb0y6RIEQB8XMmdJIEQBtGK+FFRNTWKL.PvthqtT2+79viqqu7CWbUM9lcGU+6XA2SM9TcuDHVXUEoDhb.sYY6WHgoa7D9U5dWwcpRqnP82+5Eqa8j9+04Zz06LG4r0FN7Fz2bv0q+us9e0wM3o3wZRtuxzzT6sn860xMzXFhBODWCYV+8qC9aEWUQd8dJxPiPIGcKWob5nZ5euofJKnKWeVI8IBt2zv1RRomd5J7vC2qmWngFpF6XGq111Z7cycjizXcERHgnku7Un4N24nLxHCON2ZpoFst0sNst0sN829a+MEe78WKXAKP+xe4uTG6w545.aN434VWe5omdqN11ALsWYfbIb26ZVOxGg8VNmOr5Z98joM1cGQuaMMncJchPpMWI0WewF4.6vKshiL9Tc+0EUk2+ztF8.RSWvDtX81a8U0FOvWnUNziWypIadPcF2vz+45ly+6TYUUhd70935Ql6C2lqs7sESSm5t9nayqk6tly8oIjnq4Jj+90A+sUt6ORqb2eT6VlzGzDze7z65KlFwDVLxlM6xoSG9zeOn2j9DCUlZpwyMAgniNZe9ba9Z2d0UWsGOd3CeX5i+3OQWy07CULwz18.dwEWj9O+mmWyZVyRqXEdNoZZd6KxHizmaenOFifuUTlF3QlcSWSKqHCw6uAYqlHCIbWc5UCCWlf3WS.7Gp0Qiepygauq+yz0U+NiZ+Bos2XCaKg2jemRc93pEykbLeOkZBtVtje9udwdcH13Mw1uXzOaFWujgTNEmkVxVeIueR9A96WGrxLLjrayUeOWmS+2pFjUPehdbevC1ywY6N1wNjSmNkMuLarMMM012925wwZ9DRUxU38Eu3Eqm7IeR8du26q24cdasgMrdOFBMMnhJJWKXAmu9rOakZ5Se5RRJoj77iMZm6bWxzzTF802WeQPOyFW9D.PuT8O7FGWzYVxA5x0Wb0We4ezrUsNpqCsI5jQwY1X6xGGu11LLzu9D9U51V1snppoB83q6I08Mq6wmmTrslom7woSaTmkV0d9H8we2GnieHSSSNoI3ymuMa10KcIuRG5Z5uecveaAS5x5Rqi6cDUUW0p15b0QpM86K8EzmnG2adX6JpnBs28tWuddYjw9UYk44jLs4uIflJ7vCWWxkbw5EewWT6bm6RG5PGVKYIunl4L8biNnlZpQu268dsS6qbs+8mo.ZAyfosL0FzjkSslMTYpntdeCijVbO4LX70D.+m3aRvnr7KA2csthaZ5T6uCVeYTbiCK0NRfsAGcR5GLUWSrz8jy106r62uCccaM+nisgI+po9aq8oT4015qpb9K96WGrxNbYMNDi6e399lDUuA8IBtOwINAERHd9N527l2rWOuMsoM4wisa2tlzjlnOecSLwD0BW3koUrhOQmxo34Xp6y+7F2AWmvDFeK58+stUuuzU8vO7Cqa3FtA2+wWNGXsY3vBMlwMMUk0089OjEHTQcU3w3BxvYe6OxZz6W3gDl5ezt1l5OjeHv3n5eiaHgYT796Pm6Apu7gGVTJoHSrCctm4Hmsl7vNdII8Feyq3SahSsmFl7q1rYWkTQA5Y95msKUedi+90Aqru5Pq08WO1A58EyidS5SDbefCbfZ1ydNdbr67NuCUTQs8DZnjRJQ24cd6dbrYNySSCZPMNrVdrG6wzi9nOpdzG8Q0e9O+mawXUuot9q+F73wYmciuawjRJoVzq72y876ay0DdIWa9S+9e+coEu3+o6+Darw0lkG8NXWA+y+gFVQYjjxoxfu0c9tpbqr9Mdk5WYYBwH3+0DftpoNTWAdKth7a2MenlJ+JJTuvVeE8Ba0yPxGexS083S9a5.qu5EWUIJ65qmIOjo40MenVyML8ethN73jCG0pGesOtbzEGezML4WkjVelqVqNqunKUedi+70AqpppqFs5L9LIIM33GgFdrCs8OgdY5SDbWR5JthqziGu+8ue8i9QWaattTecW200hwn9UcUWkGO94e9+sti6310cbG2tt8a+2oW9ke4175+Ue0W5wiSMUOWBrtrKagd73su8sqa4VtkVstJqrxzu427a7nsmd5o2taXSn2gHsYs9HAOb4Y68BYwz76Iq1qI.cFmR8qa1xT5+zN6DoM0Kt0WVe329VZE6dYJoHabogMxPiPSXHGmjj95r9bsqB1iOUe+6s7Bt20POsQbpcfVeibOwRkzQJJS86W9s6kyv6t3i4hbO4W+aeweUYTvt8xYz44Oecvp5eukknhq+MsLmzNi.bqomWenf6WdK1Pk9fO380BVvBzJW4pTwEWhJt3RzpW8ZzBVvBz69tdtSqdpm5o1hf6m4YdVd73e8u9WoEsnEobxow0k8ryNacG2wcnm9oeZOJ6EdgWnGO9Zu1qUSaZSyiis3E+O0O9G+i0l1zlT4kWt16d2md0W80zIexmj9nOZYdT1e+uuqu7JgfeCrecrOZ3.sCV1gBzMA+tleOMvvSJ.0R.54bLILFM0Q3Jz3FOvWn2ZWuW6V9u5PqWqMyUKIoSaTmghHTOGRY+vi8pcus0+W9hGUYUZ6+6Jd8c7VZc6eURRZBCYpZZIOkN6shqIVZ86ppllN6z0SCraXS+5S3WoPqeEu4nU18sQ44uecvJo55pQ+008zZU6w0RN4HSbb5bSe9A3VUOu9DqpLRRFFFZwK94zIbByPEUTiKETKco+Oszk9+Z2yM936ud1m8e0hwg9sca2lVxRVhJtXW+PZkUVotm64t08bO2shO93kggMOtVMH8zSuEuI.61sqm8YeNcJmxo3wtn5RVx+QKYI+m1s88y+4+bsvEdYsaYPuCiL1gp820VIy5QsqB2YftI32076ozhqu0GSK565Geb+Hcq4tcUdUkpWayuf1WQYnKY7eeMh5GpBNb5TG7nGVu8tdW8U0OTFBOrn0ELlyqE0UxQOHcIG6UnWYiOuJshB0cuh6RyermuNmzmmGqs66pf8n2bGuk15gVujjhrewpe9z+Yc46kezwd05ayYqJ+idDuWXevfiNIcUS8Gp+859G9T4MMM0Nx+67Z4hJrnb+82F3OecvepfJJvmtmRItgqHCskyWqV66IU4nZUPEEncW3dz5NvZTU03ZSHbfwLX8+6D9UxVevUeu9LA2kjRM0TzW9kek99e+KRae6a26mfjNli4Xz+2+2aozRqk6taIkTRZcqa85ptpqPqacqyimq3ha8wO+vG9v0G9gKsU2.nlvDlfV0pVktnK5BUVYkkWaagFZn5u9Web8S9I+De5dAVeyH4z0mlucIaAuqc3FFRlFRxTJuxOrJslRUrg06XW9szZJU4U9gc8.CICYWyXHoGXaT.8P5e3wo+3Y7.5AV0CnBNZ1ZCYtFsgLWi5WnQnnCONUb446wXFOkDFst4S5lTBQz5CmrKXzmiB0VX5E95mUUUS45s25+Uu8V+uJpviUQDZTp3JJP04nw4NVhwNDcGy7NZy5qinegDltwS7Wo+vJtK4zo+42mdVibNZCG5qc+lLZOllN08sh6xqkaTIMdc+y9d83X96WG7WVyd+Xsl89wdsb2wruWMojZ4tWuu98joL7ST23w+KZ0v+8EzmYnxzfzRajZ0qdM5AdfGTibjs8Vsbpolpt+6+AzZVymqQMpQ0NkKE8oe5moa8VusVrdr2.a1roQO5Qqa4VtUsks7MJ0TSoMquIO4Iqu5qVq9s+1emRLw19ifeZSaZZoK8iHzdeLiH5gnvMa6kjzfJ02SHqK2M4kBZc39do96sHTxJkXFV.rEAzyJ4nGjVzbWjNmw+8Tj8KFIIUcsUpBNZ1tCKFeTIn4eLWndfY+GUhQNv1s9N6QMWcuy8AzTGwIIa1bszpVdUkp7O5QbGZO1HGftvIsPsn4tHM3n8eCMswLfQoyu9IVp+xu73cM4W6t4uecHXkcagn3iJAkZBiQy+XVfdzy4w0u8juo9rg1kjLpolZ6yt0oXZZpMtwMp8u+LUVY4ZoUZXCa3J0TSQScpS0qaPSsl7yOesssscs8suMEVXgoIO4IqINwI1hcfUeQM0TiV+5WuNvAxRG7fYovCObM3Amrl9zmtF4HSsCWen2g+5l+uZ2Uu5.x01iIysYS2.lLqe0jwTlllxzYiONk3Gst2S3NB.sV+u6csOnxr3cKYXHCCowF8rzMO8qz6mHPuP03nVs2hxP4TdtpzZJUCOlgozGvn7XntzQTR0kpLKIKka44oxqsbkPDInjhJQkV+SU1M5y0Oi9L+8qCH3Ve5f6.VQqMmuQKIimQJ.Lz9ZdvcWGy0CLcpVM3tLkdfYtHMjnFbOeC1O5vkmstyUe6t99tggLLLz0N1qWmTxGaftoA.f9H3svBXwbBCZxJZkZftYzBdLGgLLb+9JLkod0u6MCDMI+pW86dSYV+6VwPRwXjJg1A.POJBtCXAcrCXxA5lPqqMlg+aI60q8T79Z0myJXOEuOskr8bBmcbIQnc..zyhf6.VPyOkST8yY.dnmzNCUGCC4wPJQR5k14+sGoY0cng1tgggjggB2HYcNocJA3VE..5qgf6.VPCnewois+GWO900nMWybMbGj2cYZxvkQFR6qvcouN2szM2B8+95b2h1Wg6pw6OIcbINUMf908uxQ...zTDbGvh5BF4LUzls8RKZOkllk2vPsb3xTeutaXXnkr8kniVSY8nsuthiVSYZIaeIta+xvPwXKEcgoe5A5lF..5Chf6.VT8uewo4LzSQxYnAtFQazA7F0ubI5wyaHUbk4q+7W+DxgeZCOo6jCmNze9qeBUbk42jdaOTM2TNM0e5sc..D.Pvc.Kr4M7SQoEwTCzMi56jcWCWl1Z0kogdsNiB2kV719O87MxNnEus+ixnvc0XusKoQE8zzYm5LCvsL..zWEA2Ar3tzzOSESv1xCY8Aca5jT00Ab8muLqUpOLiOJP057pOLiOReYVqzc6URJN6iTW93le.scA.f91H3NfE2viNYcIiZdJTm8Ovz.LZ1CpuW28XRp1jUXFWiUboWeGuh9ffvv6ePFejdsc7J0ee3p8FlFftri4bzHhYHA5lG..5Cif6.8BLsDlrNijmqr4Lht8qUasxxzhC6NntZwJLigggbZ5Tu51eQ822xyETLl2c3zg96a44zqt8WTllNc+FLrYFoNqTlmN9jlRftIB.f93LpolZM8dw.fUvqs2koUk6xjosp6VuNllsxu1vTpwCa55+4zzcYc80Rxz0wLcVeYLM0HGvX0sL8eshIrn6Va2skiVSY5Q2vi6dLsKCICaFxlBWydXmit7wdNAj1E..PSQvcfdY9u6Yo5yy6ikSaU1scMZqf6tdt5ePCA4aHnt6uVsZ383iHAcMS5p0z5g6Y6uN2Mq+yVWhJtx78HztcyH0oMr4oqbbmaOZ6A..nsPvcfdg9fLWoV9gWtp0VQcaWiNc3cmltJVqDdWlRoMfwpqZBWtRO9z51Z6RR6o38oWb6uh6MWolFZOLyAnyNsyVmeZytasM...zQPvcfdoVedaVu49VtNp1e2R868f60ef5Cua5zYiOWaDd2c8ZZniM4oqKebWhFRzC1u1tObYYqWYmut1xQ1fjgYSlDstBsGm8QpK8XNGcBCpmemoE..n8PvcfdwNb44nWY2KS6qpMHY3+m.n9ZutK0rw6dqDduo85dC++RFJ09OZMygep5DF7TUr8K1NU6rzpKUqM6MpUm0Zz9KZ2tZWMsW1MLjgrqzicF5pF+4pg5meyB...9CDbGnOfkk0mqO8PetNpQl905sUCtK40gLi6mqcBu6t9q+bMLLTRQmrFaBGiFdzCUCMlgnAEQBJhPiTQFR3RRph5pRUTaEJ2JyWG5nGVYU1gztxeGJ2xNhLMMcutx6QuraXnXsmpNyQNK1bk..PPMBtCzGQQUWhd+8uFsoB2np1V19s5siNjYZQ38lLgUcWesQ.dOqyl+flnIqMkt+xVIvdDZvZpC930BReVZ.gGuueSC..D.Pvcf9XxqxBzxyZCZKErUUlQFMaCTpiy25085OP6Dd28npocBv6w0ya+lK26+SFdbLCCaJVaopoLnon4OxSPIEYB9z8I..PfFA2A5C6qya6Z0GZqJqJ1qpxHGIactwAeGM7t6i4kde2cca1ABr2bFRFJDEgwfUJwltN8TONM8jlXGrR...B7H3N.jjz9JMKswbxPYT5gTAUmmpzYIpNUlLsUijsZquTlscx91J7dye5lDV28wadOta5YXeOGJMMoNc5rNCYytrYDhjjbFprovTHJZEYnwqDhHIkV+Gll9PRWiJ1Q3iem...H3DA2A....r.rEna......v6H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2gIaQKR...H.jDQAQE....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fEPHA5FPmgYckHyx1hTYaSlUrWYVctRUVnjoYfto08n96Ke4tyviGXzVEC...nuACCoHFfL5WRxHxQIE8DkQzGqLBIt.cKqCynlZp0xj10rz0KmEuZYV5lkJO+.cyA....VQQkfLhcJxV7yTFwd7A5ViOyRDb2rrsJm4+9xrf0JUWMA5lC....5MHjvjw.OAYKgySFQOo.cqwqBpCta5rVYl6qIm48+jpnv.cyA....8FE4.jsDOaYjzkJCagFnaMsof1f6l0jmbd3mSl4rp.cSA....8AXLnSS1Fx0IivRLP2TZUAkA2Mqbux4gdNYVvlCzME....zGhw.mhrMzqSFQLp.cSoEB5VNHMqIOBsC...f.ByB1rqrn0jWftozBAUA2McVqqgGCg1A...P.hYAa1UlTm0FnaJdH3J3dtuFioc....DvYlypjYtuVftY3gflf6lksUWqdL.....AAbl2+Slks0.cyvsflf6Ny+8YIeD....AOpnPWYTCRDTDb2rz06ZyUB....HHhYAqUlkt9.cyPRAIA2cV7pYGQE....AepqFWYUCBDvCtaVWIxrTVEY....PvIyR2rLqqj.cyHHH3dYaQp77CzMC....fVW446JyZ.V.O3tJaaA5V.....P6KHHyZ.O3tYE6MP2D.....ZWACYVC7A2qN2.cS.....ncELjYMfGbWUUTftE.....z9pLvueCE3Ct6zYftE.....z9LMCzsffff6.....vqH3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fE.A2A....r.H3N....fEPHA5F...5jBseJjgdgs3vgj7UHYOBIGko5NxqJIImE8ExYIY0S2BA.feDA2A.rnBIoYpPF1001EvdztedmQOQUSI+9dnVF..5NvPkA.vhxdRsr21ayxF2LjQ+hpar0..ftaDbG.vBxH5jjQTiwmKuoggrmzo280f..P2NBtC.XAERRyqCeNcjdnG..AeH3N.fUiggrm340wOsHRQ1hcncCMH..zSff6..VL1Gv3jBs+ctyMo46maM..nmBA2A.rXrmz424O2DNGIa7q9A.rh32dC.XkDRXxV+O8tv4GirOfI42ZN..nmCA2A.rPrmzIIYqqsEbXePc9drG..ANDbG.vBIjjtntbcXK9SUFgEten0..fdRDbG.vhvHpAJinGuenhrI6INytd8..fdTDbG.vhvdRmoertVfeqt..POCBtC.XEXXnPR7B7ZwLq5PxYAer2qtnFiLhNI+QKC..8PH3N.fEfs3SWJrD7Z4bj26q5NzK4S0YmY2WE..ANDbG.vBHjA4a6TpNx6SjyROjLq5Pdsr1S7bkLL5pMM..zCgf6..A6rGprMfyvqEyr7cJyJJRRt54cuJzA3ZWXE..VBDbG.HHm8Dmgjsv7Z4bj6603Wm2m5a0cWXWXE..8rH3N.PPtPFzE50xXXZJG484terYEEJyx2kWOOa8eVRg382T...B7H3N.PPLiHhWFwbrdsbNJc8xrlJ77X48dsQoaBag5Z2XE..A8H3N.PPL6I48w1tjjiba4XZ2QdqQFlld8bCg0zc..KABtC.DDymBU6rV4H+utEG1r5JjiR2fWOcinmnLhb.cllG..5AQvc.ffT1hejR8avdsbNKZkRNpsUeNG48A9z0xetqrB.ftGDbG.HHk8jNWepbNx6Ca6mK+0K4r0C02Tgjz4yZ5N.PPNBtC.DLxdHxdBmk2KmixjiB+1194qqV4rnU685Irjjs3Gku29..PONBtC.DDxdBSUxV3dsbNxeYRNc19koc5QdOtl9XO7C.f.CBtC.DDxdRdesaWRxQdej2KSgaSxQEdsb1G3YJYODe55B.fddDbG.HHiQ3QKawMcuWvZxSNKNCuWNmNkiB7d.eYKLYOwi26kC..ADDbG.HHi8jliOUt57wULFIIG4sLe7ZyZ5N.PvJBtC.DjwWGlLNy6i845zYw6SplB7Z4rE6TkQDw5y0K..54Pvc.ffH1ha3xH7g40xYV49kyxx02qXSS4HeecRp5a83O..5YQvc.ffH1S5r8ox4Hu2qCW2N7wdn2dhLbY..BFQvc.ffE1rK6I3iA2y8y5vUuyidDYVUVdsbFgOTYKtT5v0O..5dQvc.ffD1G3wJYOJuVNyi9Mxrpi1otF9ZO0aOoyoSU+..n6CA2A.BRXePWfOUt5x686zWCG4sReqsjv7jrYuSec..f+GA2A.BBXzuHk83NIuWPSmxYdeYm95XVQQxrru06EzdjxdBGWm95...+OBtC.DDvdhyRlFFdsbNK9KjYsU2ktVN7wdr2dR91m....5YPvc.ff.1GzE4SkyQGXSWpsqiuPFlldsb1i6DjQ+hrKe8..f+AA2A.BvrESxxHhT8dAcVsbTvl6xWOyZpPNJYcdubFFxdRmdW95A..+CBtC.DfYeP91R.oyBWgjCG9kqou1y895t3J..59Qvc.f.Ia1z+e16NO9pp9Nw++6atg.AB6PXQoJtKhZEWPDD01u1Qoi15L0pN8WWU6ny7sScp05n86zYre8aG26iVqiSsS0wtn1oKt.tWqVAUDTTghPUrHKJZBagrAY696OnIShDB2.4l68Pd97wi9nwjy4l24xM49JmbNetoGU1szK1TEOVO1m1l2vKGQKMrK2tTkt+QQCd78XedAfceB2AHOJ8HNhHJdH65MrwMGsro+XO2m3lZLZYSY4RC4XNidtOu.vtMg6.jGksqc6MugGKhr3BJs6n4JezrZ6ROpYEQQd5B.x27ShAHOIUICHJZXyHq11lq7I6w+727Fe8HZtlc8FV7PhziXx83e9AftGg6.jmjdzyHhTYwqNoaacQKUsld9AnkVhlW+SjUaZ5wbV87e9AftEg6.jmjsqXKMU4ryYyPyU93Y01UzvlQjpeCHmMG.vtlvc.xCRUV4QpAcHY011bkOcNaNZop2NhFV+tdCSkNRWd1cZ8..4FB2AHOn3x+KxpsKSsuQjo1Mj6FjLYhlWu0zc.RBDtCPusTohzi9uLq1zlygmlL+OeNdprZ6RMnCIRUV443oA.1YDtCPurhF9gEQ+FdVssMW4bywSSDsT86EYpeUY01ls+kB.fddB2AnWVwY4JzRKU8RQlsUWNdZ1tlqbNY01kdze7HRkJGOM.Pmo378..PeJEWRTzvO0rZSyT6xhTkNrb677m0RsuY1sg8aDQQC+vhV13xxsCD.rCDtCPunzkOsHJJ69QuoG+mMRO9OaNdh59JdL+kQCB2AnWmSUF.5EU7dAqLKEM7SMhhKIeOF.zmivc.5kjZfiHRU1QjuGi8bE0uH8nmV9dJ.nOGg6.zKI8X9X46QnGSwi4SjuGA.5yQ3N.8FRkJJdzmc9dJ5wjprIGoFX1sjVB.8LDtCPufhF1AEQIiJeOF8nRW9omuGA.5SQ3N.8BJdLY2qTpIIEWd1sdzC.8LDtCPtV59EEMhOZ9dJ54UxXhhF9AlumB.5yv53N.4XoG8IDQQY+xmXlpWRNbZxBEMfH0fN3rZSSW9GOZYSe+b7.A.QHbGfbtrcEXIS8qJ11Kew43oI6zuC9KGoGymZWtcoG4oGMl9eOhlapWXp.nuMmpL.jCkpzgEoF7GNq11lq7gywSS1q4JdhraCKp+Q5Qcb41gA.hHDtCPNU5xy9ys8lq7oygSR2SKU81QzPEY01l1Z5N.8JDtCPNTwkmkmlL07GhL0WUNdZ5dZJK+K.TzPN1H0.FbNdZ..g6.jiTzPmXD8erY011bEyIGOMceMW4Sk0aa5wrW3plC.EXDtCPNR5w7wytMLSKQyq+4ysCytgL0TQjotUlUaa5Q6zkAfbMg6.jKjt3H8n9XY0l1RUyOxzvVywCztmlqb1Y01kZ.6STzP2ub7z.PeaB2AHGH8nlRDEMfrZaathBmUSlOnlW+by5sMc4mYNbR..g6.jCjNKunTiVZHZdCuRtcX1Cjo9phLUu3rZaSOpyHhhRmimH.56R3N.8vRMfxhhF5wmUaaKa72Uv+hWTSUlkW3roGXjdTY2ZVO.z8IbGfdXoK+ij0aayU9n4vIomQKUN+HxzRVssoK+rywSC.8cIbGfdXoK+SlcaXSaIZdiKO2NL8.xz3ViV1b1sp2jdnmXjp+CLGOQ.z2jvc.5AUzPmPjZ.6aVssMu9GKhLYxwSTOilq7QxpsKSpTQ5xO0b6v.PeTB2AnGT2YkUo4Jexb3jzyp4M7pQzx1xps0Z5N.4FB2AnmRQoiziJKC2a38hVpZU414omTyMs8Kj1rPpANwnnAOtb7.APeOB2AnGR5QdzQjdPY011TA7Z29NSSU7XY81ldLVS2Anmlvc.5gjt7yJq21lq7oxgSRtQKa9OFQSaIq11ziZVQTjmhAfdR9op.zCHU+GXjdXmTVssYpaEQlZWeNdhxAZokseA0lMJdHQ5QbD414Af9XDtCPOfzi9ThLoRkUaayY6KnQEfZtxmHq21ziwZ5N.8jDtCPOfrdsaOhn4Je1b3jja0RUqNhFdurZaKZXyHR0uAjimH.56P3N.6gJZviKRMvIlUaaKaYQQlsVSNdhxsx5Kr1ToizkOib6v.PeHB2AXOT2YETo4JSdqlLePMWY1srPFQDoK2Z5N.8TDtCvdhhJZ6qfJYiVZJZtxWL2NO8BxTakQl5dqrZaSMnCMRU1nywSD.8MHbGf8.oGwQDQwCIq11Vp54hnoFxwSTuilqb1Y81Vb4+E4vIAf9NR0PCMlIeN.M8hY4QpB..f7nhm5ijW+76HtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.x+g6oSmum....5ZoKNeOAE.g6kLj78D...PWqjAmumf7e3dpRGe9dD...nKUHzrV.DtOw78H...PWpPnYMuGtGC5Hx2S....csBfl07d3dQC43hXfiLeOF...z4F3H2dyZdVdObOROnH0PmR9dJ...nSkZnSIhzCJeOFE.g6QDoF9LiHc+x2iA...cT59s8V0B.EDg6EM3iMRMpSLeOF...zAoF0IFEM3iMeOFQDEHg6QDQQi5rinzgmuGC...1tRG91aTKPTvDtmpriHJp7yLeOF...DQDQQkelQpxx+qlLspfIbOhHRMlOSjZLmb9dL...5iK0XN4H0X9L46wnCJrB2SkJJZ7egH0nNl78n...zGUpQcLauIMUp78nzAETg6QDQpRFWTz3u3H0HO578n...zGSpQdzauEsjwkuGkcPpFZnwL46gnyjog0Es7t2cj48e178n...zGPpwLynnw+4KHi1in.NbOhHxjISj48u2nkJd3HpeS46wA..XuQkN7nnx+3QpwbAEbmdLsWAc3dqxTyqEsr9GIxrwEDQiaKeON...6Mne8ORMhSHJZTyJRUVg+oochHbuUsT8KGY1zuOxT0qDQcaHeON...IQCbjQpgdLQpgeJELu3JkMRTg6sJSiaLxTyRhn1kFYpekQlsUQDaayQzRyQllaow787A..6UKSlHRkJRkJpMSjIUpHhLsjIUr8SyjTQDQlHRkJUpHSzxe9jOIUDYZ2G6O+9xDYZ6rSo0aqn0OVKY19M3G3zWIye91oCu2N4TbIU5h5WjpnHFvviT8u7HUoSLhAcDQpxNxHU+Fwd98C8xRjg6...zWSA2xAI...riDtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.JNeO.6N1PsMGK4cpOd80ssXEUrs381biQEatwngFyDM0XKMlc2JoxDQDQlV+uaY6+eEkJy+y6KSjISpLssQs6ikJRkIxjocuuLQjIy1eqT+484OuuoRkp08JSlLs9emor8f6B...1E5W+JpeoSmJF6H5WL1g0u3fJu+wjFW+iibeJMF4fRmuGutsTMzPiY10aVggWd00G+92nl3EeqZi07dMjuGG..fDnIL1RhodfCJNkCor3X+PkluGmrVhHb+0Va8wC+GpNd1Wu5XKU2b9db...1KvPFb5XlSZvwGexCNN58svOfufNbukLQbuKbSw8+xUEuaENB6...87Fe4kDmywNz3BN9gGEkJeOM6bErg6qqplh69E1X7Pu3ly2iB..Pe.m8TGV74m1HhwMzByKCzBxv82dCMD29ueCwbWR046QA..nOjS9HGbbomxHi8ejkjuGkcPA2xA45ppo3G9rh1A..58M2kTc7Ce1MDqqplx2ixNnfJbukLQ7e8BaL98KVzN..P9wuewUG+WuvFiVJvNuTJnB2umEtoX1Nm1A..xyl8Kt43dV3lx2iQGTvDtuz0ss3Ad4px2iA...QDQ7.ubUwRW21x2iQaJXB2evWyR9H..Pgi2shFhG70JbNvxEDg6u7pqOdpEuk78X...PG7TKdKwKu55y2iQDQAR39u+MpIpu9Vx2iA...cP802R76eiZx2iQDQAP3dMaqk3EeqZy2iA...cpW7spMpYa4+CxbdOb+kVUcwZdOma6...ElVy60P7Rqpt78Xj+C2e8BnqTW...5LEBMq48v8UTQ9+NA...5JEBMq48v8UudmlL...E1JDZVy6g6anplx2i....coBgl07d391J.tBcA..nqTHzrl2C2A..fcMg6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.HbG..fD.g6...j.Tb9d..XucehoM7XbCsec38cJGRYwAV9.5v6aaM1R7yewM1i+4uglxDqullhJqtoXCU2TrwZZJpp5lhFaLSO9mK.H2Q3N.4XehO7vhIuOktK2t92uhhuzLFUuvDsc0tsVhk7N0EO1eXKwytzpiZps4dsO2.P2mvc.5iZP8un3DOfxhS7.JKZ4uLS7hqr13Q+CaIl6qWcTqHd.J3HbG.hhJJULsCrrXZGXYQKmUl3mN+MF2wSVgSmF.Jf3hSE.5fhJJU74OoQF+huxAFGwALv783..+YB2AfN09NhRh65Ks+wW+SN1X.CvSW.P9leRL.zk9zG2Hh+6uxADiXX8aWuw.PNivc.XWZrCsj3G74lfi7N.4Q9Iv.PV4fJe.w0eA6aTT5T46QAf9jrpx.PAjW5sqsG41IUpHFPwEECd.EEk0+zwPJMcTbOPv8zNvxhq3rGab82+55AlR.n6P3N.EHVvJqM9e+iWUN41NUQQLtQURbnie.wj2mRi+hiXHQ4CY26bV+u9XGdrr0s03gl+l5gmR.nqHbGf9.xzRDuaEMDuaEMDO8qtk3G7nue7gOnAEelSbDwLOjA2su89xybTwbV3liVZ157N.8VbNtCPePYZIhW4MpM95+j0De06cMQEaowt09W9P5WbJGY2O3G.18IbGf93dgkVc7o+A+oX4qq9t0984OoQlilH.nyHbG.h5pq43RtqUGuw6s0rdelz3KMlzD8JqJ.8VDtC.QDaOd+J9EqMZtkr+7V+BNwgmCmH.n8DtC.sYcU1P7SdgMj0a+jFWo4voA.ZOg6.PG7Sm6FhLYxti593FZ+hTdlD.5U3G2B.cPM0zb7pqI6tPUKNcpXXC1JKL.8FDtC.6fm4MpNq21wL7cuWHm.ftGg6.vNX0qugrdaGuvc.5UHbG.1Aap1ly5scLCU3N.8FDtC.6fMWaSY81VUcYejO.r6S3N.rCJsjr+oGdupZLGNI.PqDtC.6fQ1MVoXpXyB2An2fvc.XGLptQ395qJ6OsZ.fceB2AfcvQsuY2qHpKec0GacqsjimF.HBg6.vGPQoSEezCavY01d+uxlywSC.zJg6.PGbTGv.igNvc8oJSKsjI9sKdK8BSD.Dgvc.ncJpnHtrSu7rZam2JpIptFKEj.zaQ3N.zl+pSZDwjFeVb9smIhe3yr9b+.A.sQ3N.DQDwQb.CL9pezr6ns+yl+Fh2b00mimH.n8x906K.XuVG+gWV7cOu8MJo3c8wyYcatg3+3IqrWXp.f1S3N.8g0u9kJtfYNx3u6TFcTTQo1kaelLYh+kGbcQCMXIfDfdaB2AnOnTEEwIO4gDe8+hxiwNzRxp8ISlLw+zu9chW8MqMGOc.PmQ3N.8UjJhC8CUZ7WbjCINyIOzXjkk8OEPKsjIthe06Dy0x+H.4MB2An.wXFRwwPGxd1OVd.kTTTZIEECr+EECr+ohwNzRhCYL8ONzwNf3PFy.hA0+t+ZRv1Zrk3J+0uS77+gp2ilM.XOivc.JPreir+wS9MNj78XzAO4quk3lej2O13laLeOJ.zmmvc.XG71qeaw+uG98hWy4yN.ELDtC.QysjIVzpqKd12nl3EdyZiU+daMhL46oB.ZOg6.P76Vd0wu802R75qcqw6ugFDsCPAHg6.Pb5SZHwoOogDQDQU00Tr30Ve7pqs93Qe0ph0uQme6.THP3N.zACcfEGm7gL33jOjAG+8m5niG4OTUbm+90Gq88aHeOZ.zmlvc.XmpnhRE+kG0vh+xiZXwSu7sD+ne+FhUrl5y2iE.8I08WPeAf9jNsCaHw87kmXbdm7Hx2iB.8I4HtCPAjFapkdjamhJJUjtnT8H2VcPpHt7+hwFG7XGPbc2+5hlZxUwJLFD+cN...B.IQTPTA8VDtCPAhErxZi+2+3U0ic60u9kJJc.oixJsnnrAjNFboEECcfoiCebkFG+9Ov3vG2.hTo18h6O6idXw9MhRhK+dVSrkpatGalAfcNg6.rWpFaLSzXiMEao5N99+cuxVhHhX.CnnXRenRiichCL9qNlgGirrt2SIbzSXfwc7k1+3y9u+mhFazQdGfbMmi6.zG0V2ZKwhdiZieziWYb127aF27i+dQU00T2513.Fc+i+2m4XxQSH.zdB2AfnwFyD+h4tw3rtkUD21SWQjIS1eDzufSXDwwcXCJGNc.PDB2Af1Yqask3tep0G+S+52oaEu++6b1mXvkkNGNY.fvc.XG7zu5Vhq52j8w6CePEGW3oMpb7TAPeaB2AfN0u6U1R7+6geurd6+KOpgEoKNGrDTB.QDB2AftvbVvlh2YSMjUa6PJMcL0Cqrb7DAPeWB2AfcpVZIh6741PVu8exiYX4voAf91DtC.coG6k2broZytkIxYdvkEk4hTEfbBg6.PWpwFyDO1R2RVssEUTp3.Fa+ywSD.8MIbG.1kVyFytyy8HhXLCoe4vIAf9tDtC.6RuylZLq21wLTg6.jKHbG.1kduM2MB2GRw4vIAf9tDtC.6RU1MB2Gmi3N.4DB2Afcozoy9WXkJq+dpE.xE7SWAfcogUV1e5uTy1ZIGNI.z2kvc.XWZDci0l8sr0lygSB.8cIbG.1k9PirjrdaqdqNh6.jKHbG.1k9nG9fy5scUaXa4vIAf9tDtC.coRKsn332+Ak0a+xeWg6.jKHbG.5RmwwLzHcQY+pJyeZcaMGNM.z2kvc.XmZHCt33e3iNlrd6W95pO1pywc.xIDtC.6TesYUdLntw5x9rWbU4voAf91DtC.cpK8LKOl0QNrreGxDwucIaI2MP.zGW1+JpA.zmPpTQ7Ul0Xh++l1H6V62y7FUGaZyMkilJ.P3N.zlItOCH9lm0XiiZeGX2aGyDws9jUjaFJ.HhP3N.DQruioj37NwQDe5ia3QpTY+JHSqdvWaywZdOKCj.jKIbGf9fJJcpXeFcIwzN3AEm8QOr3PF6.1susV452V7cej2uGb5.fNivc.JPbBSbPwIb3k0ic6kJUpnz9kJFz.JJFTIEEk0+zw3FV+hCarCHNvQ2+n3zc+ir9Gz5qto3u6tWcTWcM2CLw.PWQ3N.EP9AelOT9dDxZ0ssVhK4mr5XCapw78n.PeBVNHAftslaIS7ObuqNVsWkTAnWii3N.zszXSsDey6+ciEuh5x2iB.8oHbG.xZO+aUS7cdn0EUrAmdL.zaS3N.rKUY0MEW2irtXtKo578n.PeVB2AfcpLYxD+r4uw3G8TUFacqsjuGG.5SS3N.zAYxjId00Te76V1VhmYY0Du+5aHeOR.PHbG.hHpugVh4shZhe2xpNdw2nlnlZstrCPgFg6.rWtFZrkXC01TrgZaN1XsMEanllhMTaSwF+y+2ueUME+wUWezTSYx2iJ.zEDtCPN1W51WY9dD.f8B3EfI...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBPdObOcwox2i....cohK.ZVy6g6ieTkjuGA...5Riq.nYM+GtO79kuGA...5REBMq48v8CdL8OeOB...zkJDZVy6g6SdeFP9dD...nKUHzrl2C2O58ozX+FW9+2fA..fNy9Mt9GG89TZ9dLx+g6Cszhhi+.FX9dL...nSc7Gv.igVZdOaN+GtGQDm7AWVLnAkNeOF...zACZPoiS9fKKeOFQDEHg6G+9UZbZGwfy2iA...cvocDCNN98K+eZxDQAR3dDQbVG0Ph8cL4+0GS...hHh8cLkDm0QMj78XzlBlv8ibeFP7IlxPy2iA...QDQ7IlxPiir.X0joUELg6QDw4NkgEm0TGV9dL...5i6rl5vhycJEVcoETg6kTbp3Bm9HhS4nb9tC..jebJG0fiKb5iHJo3T46QoCJnB2iHhxGbwwEMiQJdG..nW2obTCNtnYLxn7AWb9dT1AoZngFyjuGhNSEU2T7ietMFy9E2b9dT...5C3rl5vhKb5infLZOhB3v8HhnglxD+xEs43AWTUwZe+Fx2iC..vdg12wTR7IlxPiycJCqf6zio8JnC2a0RdmsFydwaId5kVcTasMmuGG..f8BLnAkNNsiXvwYcTCofZ0iYmIQDt2pEtp5i49l0DK7OUWrp0ss783...j.seiq+wwe.CLN4CtrBlWbkxFIpv8VUU8sDu16Te7GdmsFu46us3c2Tiw6t9FhlaJw8kB..jCkMsQEtmZH8DRWbpX7ipjX7CuewAOl9GSdeFPbz6SowPKsfaMZYWJQFtC..PeMIueUC...5CR3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAP3N...I.B2A..HAn378.r6n4laNpqt5h5qutXqacqw11VCw111ViLYxjuGsbhc2utRkJUO7j...IKoRkJ5e+GPz+9WRLfALfnzRGXLvANvHc5z46QqaKUCMzXho1s1ZqMpt5sD0TSMQ80We9db...RfJszRixJqrXvCdHwfFzfx2iSVKQDtWWc0GadyaJpppMGM0TS46wA..Xu.EWbwwPG5vhgMrgGCbfkluGmcoB5v8LYxDabiaL13F2Xr0s5HrC..zya.CnzXDiXDwHFwHJnOUiKXC2arwlhJqrhXCaX846QA..nOfQNxQEidzkG8qeElWFnEjg6aaaaKpnhJhMu4MkuGE..f9PF1vFdTd4kG8u+8OeOJ6fBtkCxFarIQ6...4EadyaJpnhJhFarv65prfJbOSlLQkUJZG..H+YyadSQkUVQA2RMdAU39F23FcNsC..j2sgMr9Xiabi46wnCJXB2qqt5K3tyA..nuqMtwMF0UWgyJaXAS39l27lrjOB..TvXqas9BpSg6Bhv8Zqs1npp1b9dL...nCpppMG0Vas46wHhn.Ibu5p2hWQTA..J3zTSMEUW8Vx2iQDQAP3dyM2bTSM0juGC...5T0TSMQyM2b9dLx+g60UWcQ806baG..nvT80WeTWc0kuGi7e3d80m+uS...ftRgPyZdObeqacq46Q...ftTgPyZdObeaaqg78H...PWpPnYs.Hbea46Q...ftz11li3djISK46Q...ftTlLYx2iP9ObG...10DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBfvc...R.DtC..PBPw46A.5srwMtw3+3+3+HhHhO2m6yE669tu8o97Sxwy+7Oe7LOyyDSe5SONkS4Tx2iydUVyZVSLu4MuXYKaYQUUUUbFmwYDm4Ydl46wJQ6gdnGJ9C+g+PLwINw3BtfKnau+UTQEwMey2bTbwEGW9ke4wHFwH5wtsyW9O+O+OiJpnh3hu3KNF8nGc9dbXuHB2oa6QezGMl8rmcjNc53Vu0aMeONYspqt53W+q+0QDQLqYMqd8v478meRFpqt5hu829aG0TSMwEewWb9db1qxxV1xhK8Ruzn5pqts22DlvDDtuGZ9ye9wi+3OdbBmvIraEWee228E+1e6uMhHhC7.Ov3K8k9R8X214KiabiKt8a+1i5qu93+6+2+u46wg8hHbmts24cdm3EewWLJtXO7o8ty67NiMu4MGG4Qdjwoe5md9dbHg5+7+7+LprxJiK8RuTGotdXW4UdkQ0UWcLzgNzXVyZVwzm9ziwMtwkuGq97NnC5fZ6sOfC3.xiSROmYMqYE228cewi7HOR7o9Tep3nO5iNeORrWBkWPOjG5gdnXMqYMwm7S9IEtytkUu5UG2y8bOQ5zoi+5+5+5783rWkMu4MGuy67NQDQbQWzEE+M+M+M44IhVMqYMqXBSXBQwEWbb3G9gmuGmdDoRkJN2y8biq4Ztl3FtgaH9o+zeZTTQtrBYOmGEAPAh69tu6nwFaLl5TmZL7gO7783rWk23Mdi1d6oO8omGmD5LG4Qdj60Ds2pOxG4iD8qe8KV9xWd7bO2ykuGG1Kgvc.J.jISlXtyctQDQ7w9Xer77zr2mst0s11aOzgNz73jPeEkUVYwLlwLhHh32+6+844og8V3Tkg7hkrjkD+xe4uLVxRVRTQEUDkVZow3G+3iS+zO83S7I9DwPFxP5x8ut5pKl8rmc7XO1iEqcsqMZrwFiC6vNrXRSZRwG4i7QhIO4IuaMW+5e8uNdxm7IiToREe4u7WNNli4X5xsesqcsw0dsWaDw1WYDhHhm64dt3RtjKIhHhwO9wGequ02pS22ssssE+2+2+2whVzhhW60dsXTiZTwQezGcLyYNy3jO4StK+7VWc0EOvC7.s80eSM0TLtwMtXlyblw4cdmWLpQMpt6W5s429a+sw7l27hW+0e83ce22M1+8e+iC5fNn3rO6yNlxTlRWtuKcoKM9E+heQa+65XG6XiIMoIESdxSNNmy4bhRJojcXet9q+5iUtxUFyblyL9a9a9ahG3Adf34dtmKd4W9kiRJoj3wdrGaG9bbO2y8DKcoKMd+2+8igO7gGG3Adfw4dtmabxm7IGoRkZWNic28+CNiyctyMdlm4YhEsnEEaZSaJl3DmXLsoMs3K7E9Bc5WiYiktzkFaXCaHhHhS7DOwNca9fywZW6Zi63Nti1t+t7xKONti63hO+m+yuSu3m6t2eum7Xs0u90G+hewuHd8W+0iku7kGkTRIwAevGbbjG4QFe1O6mMFv.FPO590Ytka4Vh23MdiXyadys8995e8udaWiNm24cdwocZmVG1mZpolX1yd1wS7DOQr10t1n1ZqMJu7xiIMoIEm64dt6zetP2891ckEsnEEyYNyIVwJVQrxUtxXzidzwgdnGZL4IO437NuyqaccF83O9iG2+8e+wPG5Piq+5u9Ncat5q9piMtwMFm5odpw4e9m+N7wW0pVU7u8u8uEQDw0bMWSLlwLlN8140dsWKd7G+wiEsnEEUTQEwQbDGQbzG8QGepO0mJF1vF1Nr8u0a8VwMdi23t71cmYO8mIjKM0oN03oe5mNl6bmajISl75rvdGDtSut4Lm4D+K+K+Kc38s0st0XSaZSwRW5RiG3Adf3Nuy6bmdTwpqt5hK9hu3X4Ke4c38uvEtvXgKbgwO+m+yiu9W+qGm64dtcq45W8q9Uw0ccWWDw1eh8cUzdDQTe80GKbgKrCuuJqrxnxJqLhHhINwI1o6WlLYh+O+e9+D+te2uqs2WUUUU7Vu0aE2+8e+w0bMWS7w+3e7Nceqqt5hK7BuvN7m9OhHVwJVQrhUrh3gdnGJt669tiwN1wtKm+1qgFZHtga3Fh6+9u+N79W1xVVrrksrXNyYNwW7K9EiK8RuzN8b07QdjGI9VequUjISl1deu8a+1wa+1uc7HOxiDO7C+vwMey27NbAWtzktzXoKcowDlvDh68du23ltoapsOVYkU1N743e9e9etCuu2+8e+38e+2Od9m+4iK7Buv3u6u6uam903t6929Y7IexmLtpq5p5vWmKdwKNV7hWb7DOwSD+W+W+W6vbmMd1m8YiHhXTiZT6zKJ01OGyctyMthq3JhFarw193qd0qNV8pWc7XO1iE28ce2c5E5W24968jGq8pu5qFW4Udkw5W+56v6uhJpHdtm64hG6wdr35ttqKN3C9f6Q1uclku7kGu7K+xc388Juxqz1aepm5o1gOVqqlOevulWyZVSrl0rl3we7GOtxq7JiO8m9SuCet5N221UZrwFiu+2+6G268duc3wYqZUqJV0pVU7DOwSDyadyKtwa7Fy5a2wMtw01Oq58du2aG92r28ce23we7GOhHhMsoM0og6u3K9hwBW3BiQMpQsSiqW7hWbboW5kFaaaaqs22y+7Oe77O+yGO8S+zwO7G9C2gYt5pqtsYq8+kQxF6o+LgbsIMoIEQr8eYzksrk01+Mr6R3N8pd9m+4iu829aGQDwjm7jiO5G8iFG+we7QEUTQL+4O+3QdjGId629siK6xtr31u8aeGNxZM0TSwUbEWQaGEty7LOyXFyXFwXG6Xa6IFV9xWdbcW20EM0TSY8xG1u427aZKZ+a9M+lw4bNmSVseSXBSHty67NiHh3e5e5eJpnhJhYNyYFeguvWHhHh92+92o62sbK2RrpUsp3u8u8uMN1i8XigLjgDKe4KO92+2+2iJpnh3e8e8eMlvDlPbTG0Q0g8q4laNt5q9pi23MdiXPCZPw4bNmSbhm3IFkVZowBVvBheyu42DUVYkwW8q9Ui67NuyXPCZPY0WGQDwcbG2Qb+2+8GoSmN9xe4ubbFmwYDiXDiHV7hWbag224cdmwQbDGwND67hu3KFWy0bMQlLYhC8POz3i8w9XwTm5Ti0t10FO6y9rwy7LOSrzktz3y9Y+rwC7.OPmdDSekW4UhG7Aev3HOxiLl9zmdbnG5gFM0TSc3i25iclxTlR7w9Xer3nNpiJVwJVQ7LOyyD+te2uK9w+3ebLgILg3rNqypSu82S1+H19QRb1yd1woe5mdbZm1oEGxgbHw5V25h669tuXdyadwJW4Ji63Nti3q809ZY886sp0vkr4I1WwJVQ7DOwSDiabiKNiy3LhS5jNonpppJdtm64hG8Qezn5pqN9ZesuV7S+o+zXvCdvc5swt5968jGqUSM0DW5kdoQCMzPbHGxgDW9ke4wge3GdrgMrg3ke4WNt8a+1i29se63a8s9Vw8du26d790U9FeiuQTas0Fu5q9pw2+6+8iHh36889dsc+x9rO6SaaaiM1XbEWwUDuwa7FQokVZblm4YFmzIcRw3G+3iW5kdo3odpmJdsW60ha3FtgXzidz6vQpOauucW4AevGLtm64dhHh3zO8SONkS4ThC+vO7n5pqNl27lW7S9I+jXAKXAw25a8sha4Vtkr517HNhiHF7fGbTc0UGKZQKJl0rlUG93uvK7Bs81qXEqHprxJ2geAxEsnEEQry+KBsl0rl3xtrKKNli4Xhy3LNiXxSdxwF1vFhG9ge33gdnGJV9xWdb0W8U21+Nrmpm36oy0N3C9fihKt3nolZJVvBVfvc1iIbmdMqd0qN9FeiuQzbyMGSZRSJ9Q+neTamVAG9ge3wobJmRLiYLi3q9U+pwhW7hiq8Zu11NMTZ0McS2TL+4O+HhH9m+m+m6vS9LoIMo3K9E+hwEdgWXrjkrj3m8y9Ywm9S+oizoS2ky0C7.OP7c9NemHUpTw0bMWyN7DZckALfAz1x7UqQ5iXDiXWtzeshUrh31tsaqCm5IG7AevwwdrGa7W8W8WEM1Xiw7m+72gv8a61tsXtyctQ5zoia3FtgN7Dne3O7GNNsS6zhK7BuvXEqXEw0dsWaa+YsyFstNJe9m+4GWzEcQs89OwS7DiS3DNgXSaZSsEjz9v80t10Fe8u9WOZpolhC5fNn3Nuy6rsv7C+vO73zO8SOl6bmabYW1kEUVYkwi9nOZm9KFsxUtx3S9I+jwUe0W8N7uYu268dwke4WdzXiMFmvIbBwsdq2Zaml.G5gdnwG+i+wiq4Ztl3gdnGJt1q8ZiC6vNrNbDY2S2+V8Vu0aEm24cdw23a7MZ68s+6+9GSaZSKtjK4RhEtvEF+xe4uLtrK6x51qfDs9Wo4PNjCYWtsKdwKNF8nGc7i+w+3N7hUyLlwLhYNyYFekuxWIVyZVSbMWy0zgi5a60U2eGwd1i0l6bmazPCMDoSmNt8a+1a6ziXPCZPwG5C8gh8ce223q809ZwZVyZhkrjkDG4Qdj6Q6WWo0kZvpppp1deSdxStSOkMtga3FhErfEDQDw29a+siOxG4iz1G6POzCMNuy67hK4Rtj3UdkWIt5q9piexO4mzoONYWceaWokVZI9k+xeYTZokFm7Iexs8ylZ0QdjGYLzgNz3lu4aNVvBVPzTSMkUmxLoSmNNwS7Dim7IexNMb+4e9mOhX6+hLuy67NwK7BuPb1m8Y2gso0v8S5jNoN8yw5V25hYNyYF23MdisMSSbhSLNti63hzoSG2+8e+wBVvBhFarwne8qeY+cJchdpumNWqjRJIl3DmX7lu4a112iC6IbwoRul4Lm4D0We8w.Fv.ha7FuwN8bAd5Se5wm+y+4iHh3IdhmnCOYa80We7POzCEQDw4bNmSmFXmNc53e8e8eMNpi5nhxKu73O9G+ic4L05OTOc5zw2467c5VQ66Il0rlUmd9hO9wO91VwKd8W+06vGq0yI9H19xYWmcTuN3C9fi+g+g+gHhs+Dws+OydWot5pKV6ZWaDQzomazEUTQwsdq2ZLu4Mu369c+tc3iM6YO6nt5pKJojRha9lu4N8noexm7IGetO2mKNpi5nhksrk0oyPYkU1NMz4ge3GNpppphxJqrNDEzdeyu42LFyXFSaGYqdx8uUkVZowke4Wdm9wZ8TmngFZHd+2+86zsoqrwMtwHhHF4HGYVs8W+0e8cHZuUSaZSK9hewuXDQDyadyamdjd6p6u2SerVqee2PFxP5zS4si+3O9Xtyctw7l275P78t690Snt5pKlyblSDw1Ou2aezdqJt3hiq+5u9XvCdvQCMzPL6YO6N81pqtucWonhJJ9E+heQLu4Mu3e6e6eqSOmnm4LmYDw1+YhevSYvtxzl1zhHhc3TGpolZJV3BWXTVYkE+i+i+iQD+Og7s5se62N1vF1PjJUpXpScp6zOGW0UcUc52e052ezXiMFqXEqHqm4cldpumt2PqeeZqeONrmP3N8ZZc4v5PNjCoKO+qa8Byr4latsitdDa+TIn0yaxc1eh5H19Q.8ttq6Jtq65t5x+rjyd1yN91e6ucTbwEG23Mdi8pq85c0EO6DlvDhHhc3I2doW5kh5qu9HhHNti631o6eqGk9Zpol1hw2UF3.GXr+6+9GQDwccW2U7pu5qlU6WDaONLhsGx0UuZv9U+pe03ttq6Jt5q9p6zO9TlxT1ogNsthLbXG1gsSOmda+Z.8G7WNXOc+a0gcXG1NcFa8e2hX6G4wti5pqt1dr8t5ByNhHF9vGdW9W0o0vtFarwXkqbkc51zU2eum9Xsi3HNhHhsetReS2zME0TSMcwWM+O1c2udBuzK8RQCMzPDQzkWb3ibjirsGmz5i8+f5p6a6Iz9eoltyQws0v8Uu5U2gqgfEu3EG0VaswTm5TiS7DOwne8qewK9huXzRKsz11z5QaeRSZRc5eshHhXzidzQ4kWdm9wZ+Oa3Mey2Lqm4cldpumt2Pq+60l1zlxay.68voJC8Zdu268hH19Ko0ck1+pnWq6yG7sylSmftxO6m8yhm4YdlHSlLwm7S9IaKzo2RqQxclVO2a+fGoz28ce21d6eyu42z1ER1GT6uXEW1xVVGBJ6JWxkbIwUe0WcTQEUDW3Edgw9se6WLsoMsXJSYJwTm5T2oO4Xq+6xd5+lzUqNIs909K8RuTWd5+7LOyyDQriOI8d592pr4e2hX6+RmcGs+HwkMKUg6p+j+G3AdfQpTohLYxDKe4KuS29r496H18dr1LlwLhi9nO530dsWKtu669heyu42Dm3IdhwwdrGabbG2wEG1gcXc5s2t690Sn8+7k1+yf5LGzAcPwBVvB5v9zd6IqpSs21111hku7kGKcoKMV+5WeTc0UG0TSMc3ee5NJu7xiC5fNnXEqXEwhVzhZaYGs0it9zm9ziRKsz3XO1iMl+7merzktz19Kaz5QoemcZxDQW+8GCbfCLRmNczbyM2s+9iNSO02S2an0um1QbmdBB2oWQlLYZ6zd4C8g9Pc41VVYkECe3CO1zl1TGVB2Z8nUTZoktG+RA+S+zOcau8blybhy8bO2c4uPQOocmkDr1ezZdzG8Qyp84O8m9SY8s++q+W+uhANvAF+3e7ONd0W8UaaEr39tu6KJojRhS8TO03y849bc3EIkty+tt6JSlLc3wA+pe0uZWtOqZUqJZt4lizoSuGu+sWtZobq8+RZYy4q79se6WW9wG3.GXLpQMpnxJqbmdD26J6oOVqzRKM9A+fePba21sEO5i9nQUUUU7rO6y11JmyDm3Diy5rNq3y7Y9Lc3q2c28qmPqOFIa94Ks9X8ssssEacqasas7TlMZngFhq+5u9XNygTUbuC..f.PRDEDUYNcqKp0rwIcRmTrhUrh3ke4Wtsv8W3EdgHUpTscZ5M8oO8X9ye9wy+7Oe2Jbu2ZoNrm76o6Mz5iUa+unKr6R3N8JRkJULvANvn1ZqcGVl29fZngFZKFr8qTEsdDMqu95iMu4MuS+y0lst1q8Zia7FuwnpppJt7K+x6xUfiBACbfCrs295u9quKeBnVWuf6pi.Vm4jNoSJNoS5jh0rl0DyadyKVzhVTrvEtvn5pqNdhm3Ihm8Ye13ltoaps+j6oRkJJqrxhpqt5c5QebOUpTohRKsznt5pKlzjlT7k9Reoc51190I4Vu3P2S2+dCs+wxUWc06xsu0Wy.1YZpolZKro6tlXGQOyi0F3.GXbEWwUDW1kcYwK7BuP7RuzKEu7K+xwxW9xiUtxUFe+u+2OVzhVTbC2vMzgUeoc28aOUq+rl5qu9nlZpoKWlEa8zSo3hKtGcFhX6+x.W7EewwRW5RihJpn3TO0SMN7C+vixKu7XvCdvwfG7fa60YhcGSaZSK9I+jeRag3abiaL9i+w+XbHGxgz1eofYLiYD27MeywK7BuP729292FqcsqMprxJiAO3A21oyT9TR36oausrksDQDd0PldDB2oWynF0nhZqs1c4423JW4Ja6bqr8+Ima+QA6Mey2LN9i+32smkK+xu73LOyyLF4HGY72+2+2GqYMqIt5q9piu2266k29g66Js+9h8a+1ub5JjvDlvDhK3Btf3BtfKH15V2ZLm4Lm31tsaK1xV1RbcW20EO3C9fcXtpt5p6QNuU2YF0nFUr5Uu5Xricrc402PtZ+y0F5PGZamFAs+BxdmYWce8pV0pZ6n6cnG5g1smmdxGq0u90uXlyblsc5ns7ku73G8i9Qwy7LOSLu4Mu3odpmpSunv2c2ucWs+q4UrhUDe3O7Gdmtssd8mLhQLhd7ix7hVzhhktzkFQr8UNqO3J6RDwt7fezU9ve3ObTZokFqbkqL1zl1TL+4O+HSlLscz1iX6+EElvDlP7G9C+gnppppsH+oN0olWNh0clB8umt8Z86oy1K7bnqTXVnvdkN1i8XiH1dzQ6ew43CZIKYIs81s+Bi6XO1issn5VuPo5LacqaM94+7ed7S+o+zXUqZUc51z5Es5IbBmP7U9JekHhseddd629smke0rykq9ygdLGywzVjvGbEmIWZ.CX.wm5S8ohO6m8yFQr8k+w1GNbBmvIDQr8UDjt5hIbgKbgwO6m8yZakAp6n0G675u9qm0qTN8j6etVpToZ6nw09SAfcl0st00kWThKdwKtsa2cmq8fb4i0NrC6vhq8Zu11tHba+KFR4h8KaMkoLk19Zt8+LnOnlZpo1VIW5pKb2cWstdpOxQNxc5uXxK8Ruzt8seIkTRay8hVzh5v42d6M8oO8HSlLwBVvBxpSSldaE5eOc60Z3ti3N8DDtSuly7LOyHhse9ytytXhVyZVS7C9A+fHhsuxqz9UhfQLhQz1SbbW20csSex0a5lto3VtkaIti63Nxpivwm6y84Z6b87Nuy6Ldpm5ox9unZmVO8B5pmzeOwXFyXZ6Uy0a61tsc5En1BW3Biy+7O+37O+yOVyZVSVca+bO2yEWzEcQwEewWb71u8a2oaSqmGuCYHCoCmZGyZVyJRkJUTas0tCuxo1pUspUE+i+i+iw2869c2stv5Niy3LhH19EP3sdq2ZmtMszRKwUcUWUb9m+4uCKYk6o6eugVeR8c18+sWlLYhq5ptpN87e9cdm2I9deuuWDw1uHJa+o8R1ZO8wZW4UdkwEcQWzN8EZm90u901uDd6u1H1c2udBidzitsf1e3O7GFu0a8Vc51cy27M21x8Yq+LsdRsd550RKszo+0+15V2Z7q+0+58nOGsdpt8RuzKEye9yOF7fG7Nr7ZNiYLiHhse.MZ8.kz59UHnm36oarwFim8Ye1XCaXCc59um9waUqeOcms7sBcWB2Y2VlLYhkrjkrK+esd93NkoLk3RuzKMhX6KEi2xsbKwxV1xhLYxDUWc0wS8TOU709Zesn5pqNF4HGYmF225qnn++yd24g2FmW2K9+NXiXif6jh6KhjRTjhhhKRTThZiV1ZyVd2INMN1No01sts1I1IsM9WbZVt219Ko4V6bSZaRrisiSpShsksVsjE0tDojHkDk39NAWA3NA3FVl6e.igbH.HAWAFxymmG8HgAyxKDAm4Luy487ZxjI7s+1eabricLze+8CVVVTas0he4u7WhO9i+X.XqVu6tSG3u9q+5boCvq+5u9bpNCa+lLZokVvu+2+6QO8zyB9.K6G8i9QHzPCE8zSO3EewWDm8rmkK+IMZzH9y+4+Ld0W8UQs0VK72e+c6JJyF1vFPUUUEJszRw27a9MQs0VKu.vuxUtBd629sAfsRw4jGXfokVZbyTnm+7mG+nezOB28t2ErrrvfAC3rm8r367c9NXjQFAxjICOwS7Dy5O2Ymc1b4z667NuCdi23MP0UWMXYYgUqVQs0VKdoW5kvoN0oPc0UG1wN1wB51uTvdtC6N8vcngFJt4MuIdsW60vMu4MgYylgQiFwYO6Yw25a8svPCMDTnPA2rJ4bw746ZwGe73l27l3cdm2A+1e6ukWd6avfA7C9A+.ze+8CFFFdkg0451sP4G9C+gXUqZUXjQFAequ02Bm9zmFCLv.fkkE0TSM3Mey2jq91+zO8SunzCz12m80We3G7C9Ab2.gYylQkUVIdgW3El2UHE6Gi+ze5Og95qOrksrEGRAlLyLSHWtbbjibDzQGcfUu5U6xR8nmvBwuS+W+W+WiW9keYbfCb.ml9Qy22Gv1Snz92i8FFe.DgOJG2IyYVrXAO8S+zy358bO2ywcB1uw23a.c5zgO7C+P79u+6i2+8eenQiFXvfAt7ZWoRk3Mdi2.QDQDNruBHf.va9luIdlm4YfNc5v26688fHQhfZ0p4Bp..XG6XG34dtmys+rHWtb7S9I+D7U+peUL3fChW4UdE7tu665V0Ta6dnG5g35s9e5O8mhe5O8mh3iOd2phG3tBKrvva7FuA9FeiuAZt4lwq7JuBXXXf+96OuJARhIlH9W9W9Wb68qZ0pw27a9Mw+1+1+FZt4lwW5K8kfFMZPbwEGzpUK29NszRyoCJtm7IeRzYmch2+8eeb3CeXb3CeXG94pJUpvO9G+imyOt3m64dNzUWcgO4S9D7Nuy6f24cdGtIBG6odECCC9G+G+Gc5ja07c6Wrs8sucb3CeXzXiMhQFYDnPgBWttaaaaC94me3se62Fm9zmFpUqFiN5n7tQwW+0e84UI5b97csm3IdBbkqbETd4ki27MeS7y+4+bjXhIBKVrfVZoEX1rYHUpT7xu7KyaNcXttcKTBIjPvO+m+ywy7LOCzpUK9G9G9G.CCCznQCuwdvANvAvK9hu3B9wGv1rM7d26dwIO4IwQNxQvQNxQPHgDBLXv.22K9Y+reFd9m+4myGiniNZDUTQwU68mZZx.Xalf19DdEf2UZxX2742oGczQ4d5nlLYBkUVY7lzsluuuc1uQb6++IgLeQ83NYI22467cvK9huH2EdGbvAgUqV4JGY+hewuXZqWyQGcz3W9K+kX26d2PjHQvpUqXvAGDhEKFIlXh3EewWD+ze5OkWEowcDUTQwM8hqUqV7c+teWdS.IyjsrksfezO5Gg3iOdtduZwn7nkTRIgewu3Wf7yOetZ0s8.oBJnfve2e2eG9s+1e6rtp67vO7Ci268dOjc1YCEJTfAGbPTVYkg96ueDarwhm8YeV7a9M+FWFvzK8RuDdoW5kP3gGN.l3mq96u+Hu7xCu669tS6Dai63e5e5eBuvK7BbCT4gFZHL1XiAQhDg7xKO71u8aiG4QdjEssewzl27lgO93C2SxZl727272fu+2+6iPCMTXvfAtf1iN5nwO7G9CWP5Q54520BHf.va8VuEdtm643tA7ZqsVzPCM.EJTfbxIG71u8a6vSeYttcKjhO93w+4+4+I1wN1ADIRDuRdZHgDBdtm64v26688VzJ8ghDIB+3e7OFO+y+7bUDH850iQFYDjYlYhe0u5WsfTO6mbkgxUAkO4.58lRSlIat96zxkKGO0S8TPhDIH8zS2gadY9991YexrayadyK3kMTxJSLiOtIO5n53N2oLO4gm3AY0pUzc2cit5pKnPgBDd3gOqC1djQFAs2d6X7wGGIjPBK3kls4J6UGD0pUCYxjsncbLZzH5niNvniNJhJpnl2kHS6XYYQGczA5u+9QBIjvr5BNrrrPud8nqt5BgDRHKJ8LpUqVgNc5fd85gFMZPjQF4rptdOe29EKuzK8R3hW7h3ge3GFe2u620g2+odpmBkWd4N795zoCc0UWHzPCEgFZnKJAUNe9t1HiLBZrwFQ.AD.2M1sXtcKTFd3gQGczALZzH2+2tTW0oreNxnhJJ2Zx4Zkp45uSOSOcq4y6a0pUr+8uenWud7Zu1qgG5gdnY9CBwq25We5dziOE3NgPHdItvEt.d4W9kgFMZvoO8ocHvCWE3NgP79b8qec77O+yCMZzfCe3CS230xDd5.2oTkgPHDuDae6aGaYKaACN3fb4VLgPDlN5QOJ..dgW3Enf1IKXn.2IDBwKxq7JuBjHQBdy27MWvqJQDBYoQM0TCN9wONRJoj7XiaFxxSTf6DBg3EIt3hCekuxWACLv.b8Xmc95quve+8eNUa1IDxRme0u5WAMZzfW8UeUulYaVxxCTNtSHDBgPHDhafxwcBgPHDBgPHyHJvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.Odf6LLLd5l.gPHDBgPHSKFFOdXyd9.28wG4d5l.gPHDBgPHSKe7wGOcSvaHvcYd5l.gPHDBgPHSKugXV83AtKWN0i6DBgPHDBw6l2PLqd7.2UnPomtIPHDBgPHDxzxaHlUOdf6JUpDJTnvS2LHDBgPHDBwoTnPATpjBbGhEKFpUq1S2LHDBgPHDBwoTqVMDKVrmtY34CbG.vWe0.IRj3oaFDBgPHDBgviDIRfu9pwS2L.fWRf6pToB94m+d5lAgPHDBgPH73me9CUpT4oaF.vKIvc..+8O.HWNkq6DBgPHDBw6fb4Jf+9GfmtYvwqIvckJUf.CLPOcyfPHDBgPHD..DXfABkJ8d5XYul.2Ar8eNAETvd5lAgPHDBgPVgKnfB1qqSk8pBbmggAgDRndUORBBgPHDBgrxh+9G.BIjPACCimtoviWUf6..RkJAgFJE7NgPHDBgPV54u+AfPCMTHUp2WEOjY7wMw5oaDNiISlgd85PO8zsmtoPHDBgPHjU.BJnfQHg3cFzNfWbf6..rrrn2d6E81auXzQGwS2bHDBgPHDxxPxkaqHoDXfA50kdLSlWcf61M7vif96uOLv.8CylM6oaNDBgPHDBYY.IRj.+7ye3u+A3UU8XbEAQf61YznQLzPCBCFLfQFg5AdBgPHDBgL6oPgBnVsZ3quZ7ZlbkbGBp.2syhEKX3gGFiLxvXzQGEiM13XrwFErrBtOJDBgPHDxBp4Z7PdyoHx7ACCC7wG4vGejA4xkCEJTBkJUBwhE6oaZyZBx.2IDBgPHDBYkFutxAIgPHDBgPHDGQAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.HogFp2S2FHDBgPHDBgLCXFYjQX8zMBBgPHDBgPHSOJUYHDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.n.2IDBgPHDBQ.fBbmPHDBgPHDA.JvcBgPHDBgPD.j3oa.DxJIlLCzoAVz4f.cLHK..BWCCByWfv8kARoeijPHDxxTVsZEFMZDFLZDFMXDFMZ...pToFpTqBpUoBpToBhDQ8qrqPgIPHKhpqaVblZXwEqEnidYvvCCvxZ+cY3stLLrPoRfvCjE4mDPAIyfDClwg8IgPHDhPfEKVPGczAZpolQyM2LFbvAcqsSiFMH1XiAwFabHhHBGhEKdQtkJbvLxHivNyqFgPbW0niE+oawhqTKC5ou429Jn..xKIV7XYvfjCkBhmPHDh2OsZ0hJqrRzRKZgISllW6KoRkhXhIZjRJofniN5EnVnvEE3taXjQFA.LPgB4d5lBwKV6Cvh+iyyhKbGlI0q5KLXX.195Ywe+NXPD9QAvSlfd85Qe80GFYjQvHiLJFczQ.KKfBExgb4JfRkJP.AD.BIjP7zMUBgrLWWcoCEUTQn81aeQY+GQDQfbyMWDVXgtnr+EBn.2mF502MN24NG5t6tA.PngFJ1wN1NBN3f8vsLh2j9FlE+xKyhiWBCLa14qiXI.qIZVDge.A6KPnpABQss2SuA.cF.5dHf1G.nZsLvhK1ORj.r+rXwKrUFDfRJ.9U5LZzHd2288bq08q80dJnToxE4VDgPVIZfAF.EUTwngFZvkqib49fniNFnQiFnRkRnToJnRkRvvvfgGdXXz3vX3gMhAGbHnUqVL7vC6x8UBIj.xM2MC+7yuEiONd0n.2cg1ZqcbhSbBGdDORkJE6e+6CQDQDdnVFwaxsa2Jdk+HvPFbLHZkJAxIQVrqjA1dBLPoL2KP6gGmEWnAVb1Z.tdc1xK9oxW0r3m73.aHBZ.7rRVYkUFt7kuhast4m+1PZok1hbKh3MYzQGEUWc0XvAGxkqiDIRPRIkHuNjpolZBZ01pK2Fe7QF1zl1jSeOc5zg5qudX1rEWt894meXMqIY3iO93FeJHd6ZngFwYNyYfYmzyU95qZDWbwi3iOdDQDgCFF265frrrPmN8nolZDM1XSnu9bLuSkHQBJnfBPBID+79yfPBE3tSnUqVbhSbRXwhyOwiXwhw912dobsZEtO8tVw+1wXf4oj9dJUB7U2JK9KxlAREO+5UbSVXwu6Fr38triAvKQJv29.r3ARiBdekpO7C+HnSmN2ZciHhHvgNzCrH2hHdKZpolvoN0oc40wlpjSNYTPA6F..W8pEgacqa4x0UoRk3q80dJGV9IO4mgFarQ253IQhDryctCjTRI4VqOw6TIkTBt10ttCKWsZ0XSaJGjbxI61AqOcpu9FPwEWDFX.GGbqaZS4frxJq48wPnP7q8Zu122S2H7lzTSMgO6yNEuS14u+9C4xkiQGcT.X6NAqu9FPPAED72e+8TMUhGBKKv+94rh+qSy.qVmX4RjB7v4xhexCyfMGmHHVz7+jUhEwfMFECd3MBLBXQMcNwwzpUfKVECFvBK1RbLXA3biDuLszRK33G21S9K3fClqxJvxxhFarITVYkwstQDQD3QezGg6hXomd5PmNcXngr0aqFLX.gFZnPiFMbWH0jIS312tLb1ydNnRkZDP.Arz+gjrnnvBOK2O6cG8zSOH4jSBxkKGs1ZqnyN6zkqqToRQFYrAdKq6t61se5O.1JKfczQmHiLxvs2Fh2CylMiyblBwctyc4sb4x8AaZSaBETPAHjPBYAInc.f.CL.jZpoBEJT.c5zwq28aqs1Q+82OhM1XVQTFIodbeRpqt5wm+4eNXmzHKLv.CD2+8eP..bjibTzau8x8dLLL3dtm6AIl3pWxaqDOmu6QshybK9mLJj.Adim.H9fVbidtgdXwe+G.nuW9KufLXwO9fK+Og0JI291kgqbkIBDRtb4HiLx.LLLn7xK2gxp112d9H0TSk2xJu7xwEtvE4sL+7yOjZpqCVsxhacqaw0gD.q754pkql5XeHwDSzkkSuVasUXznQ..jat4hMtwLP80WOZt4V3sdFLX.s0Vabu1d.Y4jSNHqrxDW6ZWCkTRo..vWe80koSpISl3kGzO6y9LTJyHvvxxhidzigVake5TEZngh8t28BUpVbGKMCO7v3jm7yPWc0EukGUTQgCdvCrfcyBdqn539Wn5pqFm8rmiWP6AGbv39u+CB4xsUMYNzgd.bjibTtAqJKKK97O+ygEKlwZVyZ7HsaxRq2pHGCZO0DXwO6gYfF4K9mrHgfXvu6YYw27iXQ4MLww6L2hAqNXq3YykBdWnypUq3hW7RnhJpf2xGczQQQEUjK2t3i2w77L93i2g.2GXfAvUtxUc593ZW65XfAFD6XGampaxBXVm7iBD1FeC1uN1TczidLt.2sZ01SZd0qd0X0qleGR0TSMwKv8ItVos+1hkINlgFZHX26dWN83MzPCwKvc1E5RvEYQ2ku7kcHn8jSNIryctyY84MrXwxrdaTpTINzgd.btycdTSM0vs7VasUb4KeYrssssY09SngtJO.Ju7JPgEdVdm.IzPCEOvCb+7NYmb4xwC7.2OBMzIJCQrrrnvBOKJub9Wjkr7y4qmE+5B4Gb99xlE+2eoklf1syO4L3+9Kwf8kM+K38qKjAmud5hfBY15Lfy3PP6SGkJUhrxJKmVwXTpTIxN6rfu95qau+pt5pwoO8oo.pVFp5pqFUTQknhJpDCMjgY01nUq1Y8wangLvc7ps1Zm0aOw6SEUTgCoGyl2rsTiY1F.dUUUE9s+12A+g+v+iSG7oSGwhEiBJX2Xyal+fj9N24typyeJDshuG2cVUYH7vCG6e+6GxjI0g02Ge7A2+8e+33G+3niN5fa4W3BW.VrXFomd5K5sYxRu56lEeuOB7xo8slFKd885Yt2WwhXvquWFL3nVwkuqsaZvpUfu2GA7VOCKVMMiqJHcsqccTe80yaYIkThfkEnt5pi2xiIlXPZokFhIlnm1GMbN4jCxImbPGczAJu7JPCMz.2X3gggAqYMICFFQnxJqjaaZrwlvUuZQHu71xB3mNhm1Eu3k3pTZ6ae6E95q5Y01Xmb4xw92+9A.fZ0pb411SOciye9yC..UpTQCDUAt1aucbwKdIdKaCaHcjYlYNm1ekTRoX7wGGiO93nhJpDacq4Mq2GYlYlXzQGE291SLdet3EuD72e+W1V8+VQG3dokVJJt3qwaYQEUjXe6aePhDW+eMxjIEG7fG.m3Dm.s15DO5vKe4q.ylMOm+RLw6DKKv+vgYwXiMQvQwFAK9e4EjS4+uOnH7T8ZEM0ts11XiYqs9G+5zfUUno5pqAkVZo7V1ZW6ZvN24NACCCxN6r3d+ryN6Yc8KN7vCGgGd3X3g2BtwMtAFarwQN4jM2.rWrXw3t2chdR61291b4COgLYhDIZE8DfyJQVrXAEVXg7RCqniNZrksL2u49vBKTtwpy746SaYKaA81aebOUHqVshBKrP7k+xe4kko7mmOxCOjqcsq4PP6wFaLX+6e+SaP61IQhDr+8ueDarwva4EW70v0t10bwVQDhNVEVg1NmHJXeUyh23wXfOt4s8VV6Vw88FVwO7yrByVVXS+.YR.diGiAZ7ch8q1NYvwpv5zrUDuM80Web8LocSNnc.f.BH.TPAEfBJnf40jNhRkJw1291wd1y8vqpX4r579ktzk3FSODgO+7yOt+HUpiOQ4YhRkJge94GznQias9RkJk63MaRWKh2m6d2x4kdU96u+3du28LuFHn6bm6D2y8T.NzgNDRLwDmy6GFFFbu26d3c9rgFx.t6cKeNuO8lshrG2uxUtJt8suMukEe7wi68d2yrpTBIVrXbe228gSe5OmWsqsjRJElMagdLyKCXxBK9kmi+Il9mN.PX959mrp3lAFXPFbrqCzfdV7+4Qskm5KTB0WF7ZGD3a+GlXY+xywf8tVVHYdVG4IKMrXwBuRPqToRw1291WxqNBacq4g5pqNtJMiUqVgHQK+5wpUpdrG6QmWa+N1w1QbwEmau9QFYj3Iexu775XR77Fe7wc3oAt6cuKHSlr40901j+0BS5SISlLr6cuK7QezGysrRKsTjRJqcd2N81rhpG2YYYwEtvEcHn8DSLwYcP61IVrXbu26db3tEu8suMtvEtHM.uD39etIK5YRiYljhgE6Jo49u1TYSL3q91.M22B62K19pYv5heh8YO8A7GtI8cOghfCNXdADYxjITYkUsj2NpolZ4UdHW8pWMBLPp1tKz0e+8id6sOm9GmMaW5JFLX.81aeXfAFXZWuwG2jKOdyz1R79L0xFa7wGOBKrv7fsHmKrvBiW00ZzQGcZmHwDpVwzi6rrr3bm6bnpppl2xm5iidtPjHQ3dtmBfDIh4s+Ku7xgEKlm26ehmgEqr3ctD+et8x6d9+yQc8.7LuMv+1ixhriYg66EeqBXv232XKm7A.dmKwfmLS1EjIBJxhuryNKzTSMw85adyahTRYsKY4noUqVwMtwM3srrxhFuNBQJTn.93iOXrwFC..e7GeX2Z6b1DvUt4tYXwhUzau8xMvDc1Lm5j2VsZ0hO3C9fY73IRjn4TJ6PV5XeRZyNFFFjatadNsuLXfYDRjN...H.jDQAQ0fCodGCCCV0pV0BVs7O2b2LZpol35zzae6xvF23FWV88rUDAta0pUblyTnCUkgTSMUje9aaAInZFFlunFlJAkW9D4UUUUUMLa1BJnfcuhXF8Z4jRzBXXRULsrRlEYF0ByOCGdXf+9eOvqd.q3AW+By9L0UwfslpUbounJyXvfsOCaJ1EjcOYQVHgDBBH.+Qe80O.rcQtN5nCDUTQ416CSlLwcgwfCN3Y0Eq5niN3MSaFP.9ifBJH2d6IdOjHQBV6ZWqCOc4oiJUpbZZvXebOzTSMgppx0OEnjRJQb0qdEL5ni41GyXiM1kkCdvkSzpsUdOUl0t10Nmlw3qpppw4N24bZVHHQhDb+2+AwpV0plWsU.a4d+ZW6Z4pRVlMaFZ01JRHAGmmKDpV1G3tEKVvoO8oQiM1DukugMjNxKuYeoGZ5vvvfsu87gXwh4MUjWWc0AKVLi8rm8PmjR.4L0vBfItotGKyE1dt1hYf+kOgAM1iU7x6bgI38GeiL3RSpD6VXsrXSwR83tPPe80GWP6.1t.TjQF4LtclLYBW+5WGszhVze+8y6BiADP.H5niF4jSNNs71NYQDQDve+8G82e+eQ6oezau8h.CLv43mHhmTVYkIjISJJu7JvvCOrKWOQhDgDRHAjQFaXd04RhEKF6e+6G25V2FM1XiSaZhpVsZrt0sNjVZo5x0g3cn4lah2qSIk0Nm1OUWcUt76DlMaFUVYkKHAtCXqMN4xaayM2DE3tPgEKVvIO4IQKsvehiHyL2H17lmaOpG2wV2ZdPhDwnzRuI2xZrwlvIO4Iwd26dof2EHtRsSDvqLe.1ZbKNA.+AWhAM2qU7u9.hb6JUiqjUz.JT.LxH1d8kqgA3dl+sQxhuIWJFA.1vF1vL9z.aqs1vYO6430S4SlsaFnOzPCMfcsqcNs8dOCCCxHiLv4N24lTapbr8smu6+gf30vGe7AYmc1Hqrxh2.edpDIRzB1SCNrvBC228cuvhEKSaf6hEKlReTA.VVVzbysv8ZkJUxaBnb1H93iGs2dGt78GarwmS6WmIzPCEJUpj6FVat4V.KK6xluysrM2MLYxDN1wNtCAsuoMkyhZP61s4MuYroMkCuk0RKZwwN1wcXxrf38owdXg9dm30Yl.KjtHdatEUACd52yJ51v7a.kJVDCxNwI1G5601mEh2KCFLfacqagpqdhotaoRkhjRZ5KOZUVYk3S+zi3xf1m5w3HG4nNbyASUxImDuYK5ZpoFbqacKXvf6MKaR79vvv.IRj3x+rXjBmhEKdZOlKWBfZ4Nc5zgQr2KPvVv2y0e1kd5oim3IdbtRZaAETvh12CXXXP7wGG2qGYjQfNc5VTNVdBKK6w8wGebbricbzYmcxa4aYKaAYjwFVxZGYkUVPrXI3pW8pbKqs1ZCG8nGCG3.6eYWIJZ4jhZleZxr60r3eLarMF7W71r3MdBfjCcteBscmLvEuyDutnlYQ7AQWnzaSCMz.t8sKygySA.jbxIOs4m9fCNHtzktLukISlLr5UuZDbv1xK8t6tGTe80iwGehdx5JW4pHpnhxk4npXwhw5VWJbOsPSlLgqd0hvUuZQXUqZUXCaHcjPBILq+rR7bJt3hwMuoiUVi8su8hXiMVb7iOQGbkSN43v.R9sdq2FiO9375A8gGdX7e9e9e4xi4pW8pwd1C+G02LcbHdelZOjO4J1xbQfAFHuTuqvBKbds+lNwGe7n7xqf60s2dGdkUBm4hkc839niNJ9zO8HNbwv7yeaKoAsaWFYrAje9ai2x5ryNwm9oGgW4Uh3coioTwxxN5kl.e6e.F7W9N.mu94dujmYj7aqS8yBw6PokdSmFzN.l1IiDVVVb1ydVdCXrHhHB7DOwiictycfzRKMjVZogctycfm3IdbdS62VrXAm4LENsowfqpS2c1Ym7R+OhvfUqrfk04+YpuOfieuvpUqN86KtZeZ6ONNAvMSGGh2GiF4+j1DRA9N015T+rHjsrKv8hJpXnWuddKam6bmNLi.tTx9EQmL850ihJpXOTKhLS5ZRYe.CCPHpW5N1iMFv+3G.7d2XtM6mFrZasY65ZlyjBhGfyR+jHhHbje9aCgGtqGjVc1UW75IL+7yObfCrenVsieIUsZ03.GX+7loU0oSGZs01b49OzPCE4m+1PDQDgCOJaJkYDFLYxDpnhJQEUTI5omdb55nUqVTQEUBiFMxsLc5zysc1+yjmh6IqrXvvDe2PhDIy3.b2ahLYxfDISjTIS9yhP2xtTkoyNm3BZLLLX26d2H4jWXlYtlORIkTfXwRPgENQucM41Jw6h9IErqRk.RWhmARsZE3+6IYPS8XEe26kAhlE4BnXQLPoRVX+5w5o.285vxxx6ItEQDQf8rm6AJUpbF2V8532wD4me97t.0TIQhDje94iidzixsLc5zgni14CTUFFFtdsejQFAEVXgbo3vniN5xpA40xUiN5n37m+7bu9fG7f7RMyN5ncb0qVjCaWSM0Du4R..ay9oty3B6t28tnlZpYFWOhvwjuoNUpT4AaIyMpToDCLvf.f+mEgtkcAtuwMlIt3EuHjISF1111pWU9XlbxIAIRDiKcoKiwGebrwMR43m2ptGbh.S7SE+7ceozwtNCz1GK9OdDFnXVzYG9qlEFMZqM2ME3tWmwFaLdoePPAEnaEzN.38DEYXXPDQD9LtMQDQ3fggg6XN0mJoqnPgBDXfAxE3NKKKFarw3M.VId+BIjf48yrQFw0kGxoRtbePXgMyURjFZv899KQ3XxA65tmexahRkpn.2EBVyZRFIjP7dsib8DRHADe7wCylMurZl7Z4lglz007yCe9pxpiAmpJq3PyhIpIMJ.rmLDFF1662CVoaxCXT..oRc+Apt85rNfsTgwcJurhEKFpUqlqBzL48wLus7uLw3iONE3tWNQhDwK8nl50BkJUJ26aznQtwKgb49.e7g+OaUpzVOs1Qmchhmlz6bxU2n1Zqcb3C+I7d+95qO3me9AqVshJqrJnUaq..X+6eeTgZvK0jqnLBwemm+MqNxzrlBKK6BbG.d8ADyvv302FWoS8jpE5F7vig33hfE6LoYWv2StMqR3c91k8lZfJlL490vX+82etRalACFfEKVlwf2sXwBudbZ1LyGN4AAKfisch2GUpTgm7I+xt78iLxH4d+idziAsZs8DURO8zQVYkkS2lwFcTzQGtW5cNpSVWkJUhm7I+xXngFB+te26yEnOkC8duTnPA24MDhESiI2lUnPgGrkrvZY2fSkPVHDnuSjFC86AGOdaNEV7NOkH3m7YWf6StMO4OKDuC93iO75Ezd5o2oc1sbxBIjP392rrrS6jZhcc1Ym7BPZx6ioyHiLB5quIlPCXXXfO93iassDOGqVshd6sOt+LcUQHBwUlbdsO7vBuTMYxmSUHli9txxxdbep5omdfe942zN.tlrwFaLzae8AqVbdOAHRrHDTfA5187jYylw.CL.BJnfb61LwyJTM.U+E+aiCy.qrrypAH5BgGeqr3atqY+8VakkEFmT5wDplExVEYg.CCCjKWN2ius81aGuy67tHhHBGqd0qFolZptLU+BIT9AcewKdQ73O9i4xyuYwhEbwKdIdKa5l8CYYYQ4kWNpu9FPGczAuf9jKWtWYJHR3ynQi3C9fOf60Oyy7zy6TcHv.CD4kWd..nhJpfKcqhIlnQTQE8Lt81eJy93iOb6mIubh2mIGrqQit+3hvaAE3t.0oO8mi5pqN3iO9fG+weLmVxzryjIS3RW5xnpppxs12qcsqEaaaacZOwiACFve7O9mvXiMFRLwDcXRof3cJLem3ea0JPOFW5JIjhEC7sN.Kd3zmaOPrdLZqMa2j+rP7dnVsZGx6x1auCzd6cffBJHDd3NePmtpvBCQDQ3b8z9.CL.N1wNNJnfc6v42LZzHN6YOG5qu93VVngFJhJpHcY6piN5vg.8mbalrxjFMZvF1P5.vVojzdf61mXtbWxjIaVs9DOG0pmHXWylMiwGebASpxYxjIdyR8S9yhP2x5.2GYjQQc0UG.r0K50TSsHyL2nKW+Ke4q31AsC.TUUUAFFFGpQ6SVM0TKFarw..Pc0UG1111FTnfR5XucgMkdo9NcvhcOKyy74BEJ.9WeTfME6bOK1tSG7qBNS8yBw6PlYtQWNyoVe806x.2YXXvt10tvG7A+Qt7Ou81aGevG7GmwYNUwhEiBJX2SaulWWc06zkGQDgi0u9061e9HBWM0TSbCdzPBIXr10tVWttM2bKX3gscCnaYK451OYah2OUp3ei5c0UWH5nm4mth2.6iCH6l5mEgrk0+F1TGvWSsRNLYlMadVEztcUUUUXaaaqt7jUS8XZxz3Tf6B.4LkYJ0BqFX2KxSG.gDHva9k.hKv42MHTX07e8T+rP7NjPBIfDRHAXvfATWc0gabiR35gnpqtFjattNHHMZzfsssshyctIpU2iO93nxJqbZOl4k2Vl1AlpYylQs0VK2qkJUJxM2bQBIDufrbvsRkZ0pwe0e0eI2qmtAu7912d4921ugtN5nSb26dW..r5UmvzF3dWc0E5pqt..PN4jME39xHSsTy1PCMJXBbuwFah2qcmxlqPA8aXeg95qed4xYBIjfKebxs1ZangFZ..1xGz95qeDRHAujzNIKMVaXLve+rh9Gv1ExJpNFvxxeFIcgzZhkEuwiwLqGDpSEKqs1pc96GKVaXzXP2alZ0pQFYjAFZngvcua4.vVP30VasHkTRwkaWJojBznQCN6YOGuRwmqNF6ZW6DQEkymzkrap8P+ZW6ZQZok5r3SCwa.CCiaUlPAl9f5IqrEZngBEJTvkReM0TSX6aOeAw3bYxSjXJTnXZGWOBMTf6egoVRpV0pBColpyufkYyl4Bb2YaKY4gsjDvItgs+sAC.k0tUrgHW3CBd2Yvh+48wrfL6rVV6VgACSre1hmeRCl3lRKsz3BbG.3V251XsqcsS6EIiLxHwS7DONt90uNZoEa4c7j6.h.BH.DczQibxImYb5JmkkE27l2ZJsIJncgJSlLgJpnRTd42ECNnquwNIRjfjRJQjd5oi.BH.2ZeGczQ4zm.Se82OppxJQc0UOrXwhK2d+7yOjZpohTRYszfS0KFCCChM1XPUUY6w3N7vCCc5zgvBKLObKa50au8xqyLhM1XDD2rg6hBbmPbgcOo.2A.9nx.1fqGSeyZLL.O8tXwyk2B2MC7g2l+qWrSuGxBm.BH.DP.9i95y1f9q+96Gs0VayXujKUpTjWd4g7xyVvZc2c2..H3fCdVETT6s2NuAwZ.ADvrpduS7tTZokhRK8ly35YO.esZaEekuxS5VA3rgMrAGVlEKVv68d+N2Zhto+96GW9xWFc0UWTAavKWrwFGWf6..UVYUd8AtO0TFL1XiyyzPVjPAtSHtPtwJBxkyB6ygCe9sXvSuIVDePy+6bWpTfW6Pr39V6BWP6M1CKNysmnsIWtsOCDgA850yEzNfszawUCPUWQpToy5swtvCObnQiFL3f1lhv6qu9fd85c6Z9Nw6gEKVPEUL8i2goZngFBM2byHt3hi2xGbvgl18UngFBBN3fQ802vrd1orgFZ.VsZEhDQmmxaUzQGEjHQB2.gupppBYjwFlU2Teu81GpppJcnjRN4mNnd85woO8my68CIjfQJojxrZtiXvAGj2StThDIH5nm9N+PngBbmPbAoR.9RagE+1yZKXXKV.92OKKdyGc9E3tupYw+9Svf0G9B6Eq9oExBKVlns8k1BKjJY4yiGb4tabiR385MtwMtjl+whDIBYmcVnvBOKu1zjG7hDgggGdXdyZjG7fGzkkwO687Mfs47joF3td85w4O+4cxVZyl1TNH3fCF8zSObKKxHiDadya1EsMi3jm7y.fszLc7wGedWi4IKdjJUJ1vFRGkTRo.vVv1EUTwXu689bqsmkkEm3DmfqCAbE6CR+Iqt5pCFMZDacqa0sauEW703k9xaXCourKcrn.2IjowSuIQ3CugULzP1B.95UwfRakEYF0bKf3HCiE+eeBFrJMKrATeCsr3FUOw9zWeYwSuIpWrDJ5t6t4MXpjJUJRIEWWIOVrjbxIiqbkqxEzWSM0D5t6tQvASC9dgrPBIXWFb7hQc4VtbePXg47AC3LMPpIdexHiLP4kWA24EZrwFQWc0kakxLVrXYV+jXlrgFx8m5x0qWOuf+kKWNxHiLlyGauUzU1Ijogbo.e874urW+H.CNp6OEhmQjLPhTfMsVV7desE9f16eDV78OB+k80y2VamHLHVrXd8ttISlvMtwMllsXwwMtQI75o1o1tHBaG6XGCG9veBN7g+DzgSl+.rStb4vO+7C94me7VtRkJ4Vt8+LcowPGc1I2w6y9rSsf84frzRlLYHyLyj2xJrvyNskXa6jHQBxKusLmJmrgDRHHqrxblWQXqRbclybFdKKyLyTvLgQMaP83NgLCdrLXv6WLf9u3IAquGfu4Gwh+quDfXQybP34DCCN2qvBIhW3uOYyVXwK8grn6dmncDRP1ZyDgi.BH.ricrCTXgExsrRK8lPlLYXiaz1jFWe80GJsTaOt5ryNaGBpxcMzPCgRJwVMiOqrxBAFXf..nrxJygaVXG6X6tckFg38qiN5jatBXrIcCZS0F2XFXiazVOU9q+0+FtsYG6X6NjJMSmwFcTzQG1lgeWNMkyuRTZokJtycJiqGv6u+9woN0owANv9mwAz75V25v5V253kS6tC2sRvvxxhSe5SyaLB4qupW1VUrn.2IjYfXQL3G9.VwK9dL3KFeN3tMvf+kOmEe2608NwhjEfR8ny7O+YrnpllXeKQBvO7AXgXZvdI3rl0jLFbvA3kq6EUTwXfAF.lLYl2i.tlZpEwDSLHszRCwDSzy3E3XYYgVsZQ4kWNZt4V3t.Zc0UOV8pWMjISlCUhgMtwLvZVyZV.+DRDJFYjQvHiXKvdmEr0PCYfKXdEJTPSpfq.HVrXr6cuabjibTtbHWqVs3pW8pHu7xys1GKVkjwqd0hPKsnk60hDIB6d26dY6SKjBbmPbCYDoH7pGvJ9e+ISbhmibMFDnRq3E11RePxrr.+6myJNco7OQ3qd.VjwhPslmrzH6ryFCLv.n1ZmHH8Jqz4ynyszRKnkVZAJUpDojRJXSaJGmtdW6ZWGUVYkX3gG1oue80WuCKK93iykCtPhvUt4tYXwhsftr+jVblacqaiacqa4x2+7m+7PqVaAJsoMkCxJqrb55EXfAxET2xsAH3JQQDQDH+72FN+4u.2xt8sKCxkK2gToYoRokVJt8s4WGjyO+sgHhHBOR6Yo.E3Ng3lNz5EgZ0aE+4qLQvxuy4XP8caE+uNnHHaI52lF0Dv29SrhqUE+f1ez7XwgVOEztPFCCCJnfBfO93CuRZ1zY3gGFkTRIHszR0g7H096MajRJoHXlcDIyNokVZKoGOMZzfMrgzWROljEWqacqC81au3N24tbKq3huF5qu9vN24NWx5kaKVrfyctygZpoVdKe8qOMrt0stkj1fmBE3NgLK7s1kHzP2VQo0LQPMW5tL3o50J9OdLFDluKtA6z4fr3u8OxBscx+3jYxr3asKJn8kCXXXP94mO7yO+vku7U3VtBEJ3pPBkWd4NTd0ZngFbHvrIOCOamFMZPpolJXYYwst0s3MXTyKus3zIWGhvxTuoqhJpXWFPU+8OwjtECyzeNjJpnBnUaq71F6DMow6S2c2Mt3EujS2G1SwFW0VId+15V2J5qu9Qqs1J2xpolZQ+8O.16d2KToZ1OPTmMLZbXbxSdRnSmNdKOpnhZVU5HEpVVG39TmTG5t6tQ4k67dwZpknpN6rKHQhyW2N6rKdutwFa.c2sdmtt1mECcUahHrvv.7e7vhv+emvJN2jlriZpcF7k9uA9K1pU7Uydgu22G2Lv6bcq32eEFLxH7uP2N2.K9g6SDnq+s7h8of9hJpXrl0jLV25VGjHw1Wr1vFRGM1XS3y9rOia8qs15P7wGOWU9XrwFiWJ2..be228g3iONtfkrMfytKpt5pwV2ZdHlXhYI4yFYwkZ0pQvAGL20el53WvUhO93..vl27lbH0qZpolwoNksJCiRkJwe0e0eI.lHv63hKdtYp0AFXPLv.2EyD4x8YVM45P7Nvvvf8su8hyd1ywar2nSmN7G+ie.xLyLQZok1BduuawhEb26dWTZokhQGcLduWhIlH10t14JhaDjYjQFY1MLeEPXYYwa8VusaUxhVJHSlL7rO6yrh3KVqD7qupU7VmkASZtd...9ogE+k6.3gSmAhlm+r1JKK9nxXwu57.CLH+8kHQ.e8cyhudtzMCtR0G9gejC85jqDZnghG4Qd3E4VDwaQM0TCNyYJblWwuPzQGMN3AOfKe+lZpIbhSbR.XKv8u1W6obXc93O9vnyooLSNU4me9Kaq7GqTTRIkfqcsq6vxUqVM1zlxAImbxy6XdXYYQM0TCt10tNLXvw559zMNKVNZYcf6..EWbwb8BfmVlYtQZ.esLy4piEu9GCL1XN9d96GK1Zx.2yZ.1TLLtUoiD.vhUVb8VXwoqF3x0.z+.Ntc93Cv+7CAryDoaBbkrxJqLdoSyzYqaMOjd5T9FuRhsAvr1osyqDIRDBLv.QpottosGR6t6tQYkcG..3iOxbZJIXxjITQEUf95qOX0pqCsvGejgXiMVDUTKulJ5WopgFZDm4LmAlsW10lDe8UMhKt3Q7wGOhHhvmUk3wN5nSzXiMfFarQmNQLIQhDTPAEfDRH948mAgjk8AtawhETTQEwcBGOkzSe8H2bycYa4IZkrV5iE+ryxhhpjAtpL0pPAPlIvhHC.HT0.g4qs+F.PmAftFBPuAfV6CnzFXfqln4XX.xMEV7x6hAwD.Ez9JcFMZDu669dt059TO0Wkpk1DBYQw.CL.Jpnhc53pwN4x8AQGcLPiFMPkJkPoRUb4C+vCOLLZbXL7vFwfCNDZokV3M9alpDRHAjatadNOeVHjsrOvc6LYxD5s2dgEKVVROthEKFAFXfTovZEf61AK9YExhxabwIf5TimEu7tYPZgSArSlfd85Qe80GWs219zKtBEx+hZrsBDP.AfPBIDObKkPHK20UW5PQEUDZu81WT1+QDQDH2byEgEVnKJ6egfULAtSHKUtbiVwe5l.2rdFmlBMyF93CvFWMKdrMBr03obYmPHDh2OsZ0hJqrRzRKZcnRBMaIUpTDSLQiTRIEDczQu.0BEtn.2IjEIlrvhq0BKNaM.WsNFza+vkoRicLL.A5OvVRjE6JYa4FuzEoYcUBgPHjESVrXAczQGnolZFM2byNTFacEMZzfXiMVDWbwhvCObJMimDJvcBYIhIKrnqg.5bHa0i8t9hJPZX9BrJeYvpzX6eSApSHDBY4HqVsBiFMBCFMBiFLBiFsMnSUoRMToVETqREToREU5rmFTf6DBgPHDBgH.P2RCgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh..E3NgPHDBgPHB.Tf6DBgPHDBgH.PAtSHDBgPHDh.fDOcCX9ZrwFCVrXAJTn.LLNu9Wa0pUL5niBoRkBoRktD2BIKGMvnrP2P.9I21jlD.fDQ.Anz00f8W+DVwnl.9We.59kWNxjISn6t6FCN3fHf.B.AETPdzIMDVVV7Ye1ofXwhwd1y83wZGDgC850iAFXPXxjI3qupQHgDB7wGeb55Z+5pSkLYxfDIB9PKHSAKKKFd3ggXwhgb4xc45cwKdQXxjYr6cuqkvV2JKB9e65Lm4Ln4laAe8u9yBYxj4z0Qu9twG8QeD1vF1.xKusrD2BIKG8pGlEkUmiAo6ueVQZQC7M2EChvO9ueYs.L7XKUsPxREKVrfKbgKfpppZdKWjHQHmbxAabiY3xNUvcL1Xigt6tGnQiuvWe80g2u6t6FiM13HxHif2xGczwPSM0DXXXv3iaBxjQcZAw4Zqs1wEu3EQe80GukKQhDrt0sNjWdawguC2c2ciO7C+HG1WLLLH3fCBwFarH6rydd8ceh2i5pqN74e9Y..vK7BOuKWu1auCL93iuT0rbKt5bjBUB9.2IDOoGIOVn9KtewNFD3xUyfKcWfxakE+5uJPj9QWzZ4tO4S9TzUWcg3hKVjXhIBUpTiAFneb26VNJt3hgACCgsu8sOm2+c2c23S+zifryNKjSN43v6eoKcYzQGcfm+4eNdAIoPgbbnG7PPDCCEzNwk5omdvINwI.KKKhO93PLwDCToRMZsUsn4laAkUVYfkkEaaaa0oa+pV0pPrwF6j1ecilatEnWeIn2d6C6YO2CMKXtLP0UWC2+Vu9tQHgDrGr0L63pyQJTQAtSHyCOedLvW4Sbh.q6iEevMYw+wwYv++eNK9+7HB+SRPbM850it5pKjTRIg64dJfa4QDQ3XMqYM3C+vOBUVYUXSaZSS6iWdwR3qZUK4GShvgACFvwN1wgYylwAO3APTQEE26EarwfbyMWb3C+I3N24NPiFeQ5omtC6iPCMTjYlaj2xLa1L93O9vngFZ.s2d671uDgGiFGFs1ZqHt3hCM0TSn5pqVPE39xMq3Cb2pUqnKc5P6s0N5qudQngFJhHhHPvA63WJKojRgO93CV25RA0Vasns1ZGRkJAqcsqEgDRHfkkE0We8Pq1VA.vpVUXXMqYMNs2FXYYgNc5PKsnECN3fHxHi.QEUTPsZ0K5elIKdDwvfublL3+4ZVwcaw8CZ+yqwJJoEf15GHl.AxLZfcmzDeuQa+r3+oDVjYz.Ejriee5v2wJpUGvKrMFn1G5lEVpzVasA.f3hKVGdOQhDgsu87Qas0FFczQcHv8QFYDnUaqn0VaEpToBQGcTXUqZU7NeQIkTJ5qudA.Pqs1FrXwJToRIV+5WO5pqtPiM1DFZng..PwEeM..rl0jLBHf...vMu4sfXwhQ5oudd6Se7wGjZpqC0We8n81aGlLYFgFZHXcqacNMu7Max2luAO..HQ5IQTPT0LZqs1fVsZw3iaBQFYDH4jSFM0TSnqtzgLybi7RUQ6mKrqt5BCO7vHf.B.wGe7HnfBZN8+yjEG2912FFMZDacq44zfqEKVL16duO7m+yeHJpnhQZokla0641SwlKbgKf1ZiBbWnq1ZqArrrH6ryBVrXA0UWcHu71xL9cgN5rSTWs0gwGeLDUTQgXhIFnPgBmttFMNLZqs1P6s2NjHQBhLxHQjQFgCo.sVssh1ZqMjd5qGJUpj260PCM.c5zirxJSHUpT25bjBQqnCbmkkEe9m+4n95a.LLLvWe8E0Vac..HmbxFYmc17V+xJqLnQiFzau8fpppZnRkJL3fChxKuBbvCd.TUUUgZqsN3me9ACFLfpppJnUqVrm8rGdOdF6G25pqdHVrXnPgBTSM0.whEi6+9OHBO7vWR++AxBuP8C3NcCz2vrS6.V0hUV728mYQI0v.wR.72WfqWMve9J.6Kaq36ceh.CCvpTyfieKfqTGKJHYG2GuwoYf+pYwqV.Ez9RI+82e..zbysfDSLQGd+vBKLDVXg4vx0oSG9jO4SgYylgJUpvniNJJszRQrwFK1291K24KZngFfQiFA.Pu81KLZz.BHf.w5W+5Q+8O.pqtZwHiLB..ps1ZACCPjQFI2Ekt6cuKjISFu.2sedr96uOb26VN70WewfCNHpolZPM0TCdnG5g3cAYylMiCe3OA50qGhDIBpUqFUWc0n95qGJUpBUVYkX8qOMtKvZxjIbpScZzRKs.+82e3iO9fFZnQTRIkhsu87QJojxBw+0SV.nWe2PjHQH0TS0kqiJUpvpWcB3N24tnmd50s6oUMZrMdLrXw7BRak34Tc00.+82eDRHgfjRJQnUqVnUqVdoH0Tc6aeabkqbUnPgBXwhETSM0BYxjgG8QeD3me9wac6pqtvm9oGAlMaFJUpDlMaF24N2ApUqFO7C+PPkJUbqa6s2Nt4MuIRLwU6Pf6szRKnxJqBaXCoCoRk5VmiTHZEcf6W4JWA0WeCH8zWOxImbfLYxvvCOLN24NGt90uATq1Wr10tFdaid85gFMZvW+q+rPrXwnyN6DG4HGEG+3m.96u+3oe5uFTnPAFebS3HG4SQ802.xIm948kjqcsqi5pqdjYlaDYkUVPhDIn+96GG4HGEm7jeFdzG8Qb5fPiHLvxBzVuLH.+YQ.Jm9dj3nkaKn86KKV7Z6QDjJAnqgXw29vr3D2fAOxFXQZgy.oR.xOEVbpRYPccyhDCdh.zuZSrX3gYvSRi65kbQDQDvO+zfZpoFLxHifTRYsH5ni1kCTd.aomvINwIgO93CdjG4gQfAFHrXwBJszRwMtQI3pWsHtAQ+i8XOJZqs1vm9oGg67T1sl0jLVyZRFG9veB5niNvewewWwsyeSc5zAYxjgm8YeFHSlLze+8iKdwKhVasMTc00fTRYsbq6YNSgPud8HyL2HxLSa8jkACFvYNyYPs0VqC66FZnAzRKsfbyMWrwMlA..Fe7wwG9geDtxUtJRJojnpNhW.VVVzc2ci.Bv+Yr5GETP1BVu6t061AtWSM1xI5oK3Nh2O856F81aubcjY7wGODK11fw2U+r0nQinjRJEO3CdHrpUsJvxxhFarQb5S+43Dm3D3QdjGgqB+Mv.Cfie7S.oRkhG7AODW1KzTSMiScpSgidzigG5gdn4z3zY9bNRuYKaN64u427Vyp02pUqn7xq.gEVXHu7xi6GlJUpDETPA3O7G9ePYkUlCAtyvvfcsqcxchtUspUgHiLRzbyMisrksv8XfjISJRIk0Ac5NOzqWOWf6VsZE2912FQFYjXyadyb6W+82ebO2SA3vG9SPc0UO2E7HBKCLJK9MWkE81GC1sa7ivcjHC1zeGPnpYf3uHF+v7kAOYNr30aF35sXKvc.fGJcFbpRANQEr3uc6SbxmSVAfHQ.OPZB+SHIzHSlLbnCcHbpScJtdgB.HnfBBIl3pQRIkjC2Dd0UWMFd3gwC9fGBAFXf.vVJIjSN4fN5nSTQEUfsrkbWzu.y8du6g6FL72e+QpolJZs01fd854BberwFCMzPCHpn3e9J0pUi669tO76+8+AX1L+dTsqtzA.fXhIZtkISlL7HOxifwGerkEW3b4f96ueXxjItfxmNAGrsTbx12M3+DSFe7ww.CL.u8ac0UOpqt5gu9pldBxBb0TispkURIY6IJJSlLDarwhlatYL1Xi4zxEJKKKxO+sw8ydFFFr5UuZzSO8hRJoDzVasg3hKN.XqWvGczQwANv9QHgDB25Ge7wgbxIGTbwEi1ZqMDe7ws39AU.YYSf6ojRJtLeqFYjQPCMz.uk0SO8.KVrfniNJGtPhO93CBKrvPyM2LrXwBudiHv.CzgdKx9iqInfBj2xUq11i2YxkFod6sWXwhEnQiFL3fCxa8smCrc2s9Y7yKw6vqeBVnxGV..z4..UzDCrXgAwFAK9GtmYN.E+Uv.++hT9yjYfdFlECMFfNaojG5a3IV2MFECBIPVTXk.+seQQJwhUVbkZXPpwyhP8kpbCdBpToBOzC8Pnu95C0VacniNZGc0kNTbwWCEW70vN1w1w5V253Ve6A1pToRGNGfRkJgISlP+82+h5ix0dJrLYQFYj..X3gm3Kc50a6bQQEUzXpjKWNBKrPQKsnk2xiHhvQ4kWNN8oOM13F2HWdsJSlTp513Ew90KYYsNiqqUqV4sMSVUUUEppppbX4IjPBXm6bGTEkQ.ypUqn1ZqCgDRvboEHfsf3angFPc0UmKSyJm0a7wFaLnjRJA502MWf65zoGLLLNcbPDSLQihKtXnWuNJv8IYYSf64k2Vb4imtqtz4Pf6c2cO..t7hiADP.nolZB81aub2EHfyOwE.qa2N6t6tA.PkUVIprxJc55zSO8316Ohm0UJ2VtoC.HVDPBQxhLiA3qmKCzH285Yw285VwwuCf1tXfEK1Wpy218lNKduyMQ5xXOMYt+06zUmrDJf.B.aZS1RkESlLg5pqNb4KeEb9yeADPfAxUgWZu81A.vu+2+Gb49pmd5cQMvcmctxIV1DmOy9f5xWec9fl2We03vxRLwDgACFvMu4sPgEdV.XqCORN4jPpol5zlFQjkNZznAxjIi6ZgSG6qyjuVncQDQDHgDRf60kVZoXrwFCae646xIuIhvfVsZwHiLBFarwPQEUL2xs7EWnpxJqzoAtqRkJm9641OmVu81K2x5omdfe94mSisx956NeGckjkMAtOaYuWxGYDGm42..2LB2TG7CyW1Skl0st0g0rljc38YAfDO3rsHY14zuB3UNHcU.2txOoPq3OeEFjTLr3araVjbn.ZjyfV6mE+yeni6qGZ8L32c9IRWlSVIfO9.buqg5UKuIRkJEojRJXngFBkTRonsVakKvcMZzfd5oG7POzC5v1wBaeCZpCdKOE6oxyTmXdraxW.dxxHiLP5omNZqs1Q6s2Nps1ZQQEULpqt5wC9fGhlAq8BXahRJXzQGc3vSV1dfY1WVO8XqCmbVf6AGbvX8qOMtWKVrXb9yedb8qe8407W.wyq5psklLVsZEkUVYN79502MFXfAb37UiN5nfkk0grYv9fDcxUVFkJU3vSdbx6Gaqi6EGFKq62IpBYqXCbOzPscBHW0618zSOPoRk7FMyKDrehOwhEiUQ0X4U7N0c.TqF3sdRaCLU65XPmeBnH7iAqIVqnvJA9q2FKtZMLXqovB4Ro7F1SnnhJBCN3fnfBJvoCvOmkeugEVXnmd5A96u+djZ69rQvAGLXXXP80WOxHiL3Evc2c2MzoSmK2VQhDgniNJDczQgMsobvYNSgn1ZqEs2dGH1XiYon4SlAgFZnn81aGkTRobOsH.aCH45qudr28deHf.B.0VacPhDIt0SAJkTVKt8suMpnhJw5W+5EzUuiUxFarwPSM0LhHhHvgNzC3v6qUaq3nG8nn5pqFaZSah26YwhEmlte8zisazexka6PBITnSmdXznQGh2xd7YS9FFsmtc82e+NT1tMXv3r8iofzJ1toSgBEve+8G0TSMPu9t48d0UWcPmNcHhHV3GTMJUpD94menlZpwgdwp+96GG8nGC24N2YA+3R79vxBXwps.tmbX5lrvh+Totd6t+0CzgdF76KgEFMB7fqmBZ2SQtbEn95a.24N20g2ypUqnhJrkNbQG8DApZ+7J1qovS10t10vQO5w35oI.7+q8te+oItiiCf+9ZYqcPw1BLggXArTHZLFgUDPsAHlwPwskroOcy8nk8mvd1d5dnOXYOXYYOxsrjsoyMXfnFQj1Ehna5JEPqH0yVY3nzeYs2c1aOniZ5rNYaVva790Cu6J2kPx2uuuu22ue9lcM0rbmd+UKe9G2ne+egd85gSmNQ3vKgAGbHDHP.DKVLL8zyfAF3Gy6KdL1XtwvCOLRkJU1iIHHjcM.wJJyyNZt4cBylMiIlXBL6ryl83c0UmnzRKECMzovW+0eCjjjPWc04JZgEKHHf1auMnppBOd7THe7oBnqec+3AO3AvgCG4870TylxVJqy2HcO1Xty43xxxX7wyzlWUU8vRj6xsG51s6b98JJJYai7kdoGNHmKuWPHJd6bt9HQhfPgBk2m0BYajqEVW2BZu89p33G+Dn+96GMzfcTd4kiPgtC762OrZ0Bb4xUA89dxS98vtc6nhJp.QhrD75cRnpph8rmcWPtuzyVDD.ZygJN6OKf2+qRiWYq.2SBXXeYB0+3r+sJfiNDvGOTlRNYq1V2992q4ZpolfOe9fGOdfnnH17lqAlLUJhFMB76+FXgEV.1rYK6W3C.vgCG312NHlbxIQrXwfMaaF5zoCyN6MgnnH1111VNAhsXIS45KPf.3bmaDTc0UiFa7gclVQEkiacqagyblyB61siFZv9S0oZiSmuLRjHN74aJHJlYykSPP.Nc5DISlD+5ul6KsTZolvUtxUPznQQSM0D1vF1.le94wku7OCylMWPFPD5eGiFMh956.3a+1iiAGbHTYkUBa11LJoDSPUUEpppPVVFs1ZqO1.b4S80WOpppJwbyE.hhhbCXRCZlYlF5zoC1suk7ddAAAzPCMfqd0qhPgBgpqt5rmynQiHUp6iu66NIpu95ghhB762OBGNLZu81yNE7.xrlXBFLH75cRb+6eeTas0BYYEbiabCb26dW3xkqbt9JqrRTbwECe97g3wiC612BRj3dvqWuvhEK4cVTTnaib0155f6VsZE802AvDSbIL8zy.IIITbwEi5pqNzd6sUv9L1kUVY3.8c.b4KcYL0TSAYYY..TSM0fcu6N3mVbcjOrWcHsZZbgIEf2YyTVGeklUwatCf26yy+uo3mW.s0TZL5UEPOaOyK.PqMdgWvHNzgdKb9yO5etqI+vJrhACFPKszL10t10iLRkKuv8lat4vXikYjlLZzHZqs1djRAqACFP2c2E734mfOe9vBKrPNA2at4lQ3vgQf.2BiO93n7xK6odmRc1YmniN5.hhhPVVFUUUUvrYy37mezG4Z2wN1AJpnmCW7hWDiN5E.PlE9pc6aAtb4hkCxmwX1rYbvC1Gb61CBFLHle94yyU8OetC2dGcfSb7S.2t8fCe3Cw+uqgDIRDbm6LOpqtZ+aWfwNbjI39zSOcNA2KpnhPu8teLxHijcjzsXwBZsUm4sTW6xUl1Cu4Myzdnff.13F2Hb4ZuX6aO2E+pACFvq8ZGDm9zmIaI30nQivkq8BQQw7Fbe0nMxUSBISlb8wr4+IPUUEwim3wV8DJj22nQiBSlL8D2DLn++R4ApPLBPUkJ.iqf0s2G78ow4th.9x2GntxXGhOKPUUEKszRHVrXvpUqq3MQsjISBUU0UzBvRQQABBB4sshkGczm1UskEWLLzqW2izQW5zowwN1W.EEEbji7N4MXVpTofjjD2P4zHhGONhFMFjkkgISk.KVrfe3G5GgBEBuwa75rlrS+iIIICIoTvjoUV1pjISB85KZEU5XkjjPpTY9auRdwvBUajq1XvchzXl42Tw69Y.NaTEG8s3zjgJrFXfeDyM2bn6t6FM1nCnSmNjHQB30qWLwDWBM1nCru8su05GSp.Iytf4DvjISnkVZYs9wgn08XvchzH9kfowGcJfaFT.FMB7ouMf8J3nsSEVKtXXL3fChHQh.850iRJojrkusZpYSnmd5g0qahHZUBCtSjFwTyqhO4BpvVY.GdmBvlUFZmVcnnnfqcsqge+2WD26dIfUqVQEU7hn1ZswcFShHZUDCtSDQDQDQZ.bnRHhHhHhHM.FbmHhHhHhz.XvchHhHhHRCfA2IhHhHhHM.FbmHhHhHhz.XvchHhHhHRCfA2IhHhHhHM.FbmHhHhHhz.XvchHhHhHRCfA2IhHhHhHM.FbmHhHhHhz.XvchHhHhHRCfA2IhHhHhHM.FbmHhHhHhz.XvchHhHhHRCfA2IhHhHhHM.FbmHhHhHhz.XvchHhHhHRCfA2IhHhHhHM.FbmHhHhHhz.9C.iX6Mq3+WjUA....PRE4DQtJDXBB" ],
													"embed" : 1,
													"id" : "obj-111",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "jit_matrix" ],
													"patching_rect" : [ 41.0, 99.107407407407322, 170.040679315972739, 317.19756225151707 ],
													"pic" : "comote-screenshot-3.png"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 24.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 41.0, 54.0, 873.0, 33.0 ],
													"text" : "Get motion sensors datastream from the CoMo.te smartphone app through WiFi "
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.843137254901961, 0.584313725490196, 0.129411764705882, 1.0 ],
													"bgcolor2" : [ 0.843137254901961, 0.584313725490196, 0.129411764705882, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.541176470588235, 0.376470588235294, 0.082352941176471, 1.0 ],
													"bgfillcolor_color1" : [ 0.843137254901961, 0.584313725490196, 0.129411764705882, 1.0 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
													"bgfillcolor_proportion" : 0.5,
													"bgfillcolor_type" : "color",
													"fontsize" : 14.0,
													"gradient" : 1,
													"id" : "obj-84",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.5, 133.5, 162.666666666666629, 24.0 ],
													"text" : "CoMo.te on Google Play"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-85",
													"linecount" : 4,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.5, 277.5, 300.0, 62.0 ],
													"text" : ";\rmax launchbrowser https://play.google.com/store/apps/details?id=fr.ircam.ismm.comote"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.843137254901961, 0.584313725490196, 0.129411764705882, 1.0 ],
													"bgcolor2" : [ 0.843137254901961, 0.584313725490196, 0.129411764705882, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.541176470588235, 0.376470588235294, 0.082352941176471, 1.0 ],
													"bgfillcolor_color1" : [ 0.843137254901961, 0.584313725490196, 0.129411764705882, 1.0 ],
													"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
													"bgfillcolor_proportion" : 0.5,
													"bgfillcolor_type" : "color",
													"fontsize" : 14.0,
													"gradient" : 1,
													"id" : "obj-83",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.666666666666629, 99.107407407407322, 162.666666666666629, 24.0 ],
													"text" : "CoMo.te on Apple Store"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-82",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.666666666666629, 356.870370370370438, 300.0, 49.0 ],
													"text" : ";\rmax launchbrowser https://apps.apple.com/fr/app/como-te/id1623566703"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 14.0,
													"id" : "obj-79",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.5, 167.107407407407322, 226.666666666666629, 40.0 ],
													"text" : "video and more inofrmation at https://ismm-apps.ircam.fr/comote"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-77",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 230.5, 212.214814814814645, 223.0, 49.0 ],
													"text" : ";\rmax launchbrowser https://ismm-apps.ircam.fr/comote"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 36.0,
													"id" : "obj-8",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 41.0, 11.0, 173.0, 47.0 ],
													"text" : "CoMo.te"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"hidden" : 1,
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"hidden" : 1,
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-85", 0 ],
													"hidden" : 1,
													"source" : [ "obj-84", 0 ]
												}

											}
 ],
										"originid" : "pat-3264"
									}
,
									"patching_rect" : [ 18.5, 326.0, 96.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.5, 233.0, 142.0, 22.0 ],
									"saved_object_attributes" : 									{
										"globalpatchername" : ""
									}
,
									"text" : "p links comote"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 471.5, 37.0, 92.0, 21.0 ],
									"text" : "loadmess 10"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 166.5, 37.0, 103.0, 21.0 ],
									"text" : "loadmess set 8902"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 485.0, 86.0, 95.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 63.5, 126.0, 101.0, 20.0 ],
									"text" : "sampling period",
									"textcolor" : [ 0.501859, 0.501859, 0.501859, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 335.833333333333371, 45.0, 49.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 131.5, 95.0, 101.0, 20.0 ],
									"text" : "host ip",
									"textcolor" : [ 0.501859, 0.501859, 0.501859, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 198.5, 86.0, 34.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 63.5, 68.0, 101.0, 20.0 ],
									"text" : "port",
									"textcolor" : [ 0.501859, 0.501859, 0.501859, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 63.5, 86.0, 28.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 63.5, 36.0, 101.0, 20.0 ],
									"text" : "id",
									"textcolor" : [ 0.501859, 0.501859, 0.501859, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-43",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 428.0, 86.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 126.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 37.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 365.833333333333371, 113.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 273.833333333333371, 113.0, 61.0, 22.0 ],
									"text" : "route text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "textedit",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 273.833333333333371, 86.0, 111.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 95.0, 111.0, 22.0 ],
									"text" : "10.10.0.1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.833333333333371, 37.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.5, 37.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 144.5, 86.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 64.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 9.5, 86.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 36.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 144.45385034929177, 95.000000000000057, 22.0 ],
									"text" : "prepend interval"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.833333333333371, 144.45385034929177, 137.000000000000057, 22.0 ],
									"text" : "prepend osc_hostname"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.5, 144.45385034929177, 104.0, 22.0 ],
									"text" : "prepend osc_port"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.5, 144.45385034929177, 78.0, 22.0 ],
									"text" : "prepend id"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 37.0, 95.0, 21.0 ],
									"text" : "loadmess set 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.5, 37.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.5, 248.0, 167.0, 20.0 ],
									"text" : "s #0-parameters"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.683403, 0.543763, 0.321212, 0.11 ],
									"fontname" : "Helvetica Light",
									"fontsize" : 14.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.5, 11.0, 239.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.0, 5.0, 209.0, 20.0 ],
									"text" : "network parameters"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.683403, 0.543763, 0.321212, 0.11 ],
									"fontname" : "Helvetica Light",
									"fontsize" : 14.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.5, 301.0, 230.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.5, 211.0, 210.0, 20.0 ],
									"text" : "more"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-20", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
 ],
						"originid" : "pat-3262"
					}
,
					"patching_rect" : [ 385.0, 80.0, 427.888888888888914, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 112.0, 6.5, 56.0, 19.0 ],
					"saved_object_attributes" : 					{
						"globalpatchername" : ""
					}
,
					"text" : "p param."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 597.0, 113.0, 159.0, 22.0 ],
					"text" : "r #0-parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1064.0, 74.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "on/off [1/0]",
					"id" : "obj-9",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1064.0, 13.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 904.0, 197.0, 56.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 904.0, 167.0, 40.0, 23.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 965.0, 197.0, 63.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"openrect" : [ 49.0, 87.0, 323.4765625, 508.37890625 ],
						"openinpresentation" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"devicewidth" : 323.4765625,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 110.0, -29.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"hidden" : 1,
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 139.0, -32.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-25",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "comote-connect.maxpat",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 6.0, 0.0, 318.0, 500.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 3.0, 34.0, 318.0, 471.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.999889016151428, 1.0, 0.999841034412384, 1.0 ],
									"bgcolor2" : [ 0.999889016151428, 1.0, 0.999841034412384, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.8731849193573, 0.873295426368713, 0.87312525510788, 1.0 ],
									"bgfillcolor_color1" : [ 0.999889016151428, 1.0, 0.999841034412384, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.0, -28.0, 32.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 54.0, 8.0, 40.0, 22.0 ],
									"text" : "start",
									"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"background" : 1,
									"bgcolor" : [ 0.999889016151428, 1.0, 0.999841034412384, 1.0 ],
									"bgcolor2" : [ 0.999889016151428, 1.0, 0.999841034412384, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.8731849193573, 0.873295426368713, 0.87312525510788, 1.0 ],
									"bgfillcolor_color1" : [ 0.999889016151428, 1.0, 0.999841034412384, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 6.0, -28.0, 40.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 8.0, 40.0, 22.0 ],
									"text" : "reset",
									"textcolor" : [ 0.384313725490196, 0.384313725490196, 0.384313725490196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"originid" : "pat-3266",
						"default_bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bgcolor" : [ 1.0, 0.996078431372549, 0.996078431372549, 1.0 ],
						"stripecolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"editing_bgcolor" : [ 0.847058823529412, 0.843137254901961, 0.843137254901961, 1.0 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"bgfillcolor_color2" : [ 0.172137149796092, 0.172137100044002, 0.172137113045018, 1.0 ],
						"bgfillcolor_color" : [ 1.0, 1.0, 1.0, 1.0 ]
					}
,
					"patching_rect" : [ 905.0, 234.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"clearcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
						"editing_bgcolor" : [ 0.847058823529412, 0.843137254901961, 0.843137254901961, 1.0 ],
						"globalpatchername" : "",
						"locked_bgcolor" : [ 1.0, 0.996078431372549, 0.996078431372549, 1.0 ],
						"stripecolor" : [ 1.0, 1.0, 1.0, 1.0 ]
					}
,
					"text" : "p qrcode"
				}

			}
, 			{
				"box" : 				{
					"comment" : "requested sampling period",
					"id" : "obj-8",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.666666666666742, 25.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "remote ip address",
					"id" : "obj-10",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 589.444444444444457, 26.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "port",
					"id" : "obj-11",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 487.222222222222229, 26.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Id number",
					"id" : "obj-13",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.0, 26.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.136978753170013, 40.45385034929177, 37.0, 34.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 54.0, 40.0, 37.0, 34.0 ],
					"text" : "Gyro."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.501960784313725, 0.870588235294118, 0.525490196078431, 1.0 ],
					"candicane3" : [ 0.0, 0.533333, 0.168627, 1.0 ],
					"candycane" : 7,
					"id" : "obj-22",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 63.136978753170013, 62.45385034929177, 50.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 53.0, 62.0, 39.0, 67.0 ],
					"setminmax" : [ -3.0, 3.0 ],
					"setstyle" : 1,
					"size" : 3,
					"slidercolor" : [ 0.620823, 0.74902, 0.578497, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-23",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 62.45385034929177, 50.0, 68.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 62.0, 39.0, 68.0 ],
					"setminmax" : [ -3.0, 3.0 ],
					"setstyle" : 1,
					"size" : 3
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.425994500000002, 40.45385034929177, 47.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 12.212997250000001, 40.0, 32.574005499999998, 20.0 ],
					"text" : "Acc."
				}

			}
, 			{
				"box" : 				{
					"comment" : "gyroscope [g1 g2 g3]",
					"id" : "obj-26",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 756.555557250000334, 676.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "accelerometer [a1 a2 a3]",
					"id" : "obj-27",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 449.888888916666588, 676.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.309804, 0.313726, 0.317647, 0.0 ],
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.849976003170013, 6.5, 75.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.849976003170013, 5.5, 55.0, 21.0 ],
					"text" : "comote"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 2 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 1 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 4 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-164", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 6 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"order" : 0,
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 1,
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 4 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 606.5, 186.0, 606.5, 186.0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 2,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"midpoints" : [ 606.5, 151.0, 745.5, 151.0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 7 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-41", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-41", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-41", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-41", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-41", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"order" : 4,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 2,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 6,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"order" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 3,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"order" : 5,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 5 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 3 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-49", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 4 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 1 ],
					"source" : [ "obj-51", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-53", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 773.85714285714289, 445.795775462962979, 1131.333333333333485, 445.795775462962979 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 897.14285714285711, 437.795775462962979, 1175.666669666667531, 437.795775462962979 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 1,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"order" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 2 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 3 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 3 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-3256",
		"parameters" : 		{
			"obj-55" : [ "live.text[8]", "live.text", 0 ],
			"obj-56" : [ "live.text[7]", "live.text", 0 ],
			"obj-60" : [ "live.text[6]", "live.text[3]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "comote-connect-resize.js",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "comote-connect-server.js",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "comote-connect.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "comote-screenshot-3.png",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-interfaces/comote",
				"patcherrelativepath" : ".",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
