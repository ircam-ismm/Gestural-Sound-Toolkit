{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 200.0, 261.0, 812.0, 518.0 ],
		"openinpresentation" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.0, 6.5, 101.0, 22.0 ],
					"text" : "loadmess 8888"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.849976003170013, 8.5, 51.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 98.849976003170013, 8.0, 29.287002749999999, 18.0 ],
					"text" : "Port"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-16",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 127.849976003170013, 8.5, 46.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.849976003170013, 7.0, 39.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "sampling period [ms]",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 387.833333333333371, 105.265625, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "magnetometer [m1 m2 m3]",
					"id" : "obj-5",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 355.833333333333371, 105.265625, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.849976003170013, 40.45385034929177, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 126.849976003170013, 40.45385034929177, 37.0, 20.0 ],
					"text" : "Mag."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.341176, 0.027451, 0.023529, 1.0 ],
					"candicane3" : [ 0.784314, 0.145098, 0.023529, 1.0 ],
					"candycane" : 7,
					"id" : "obj-7",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 118.674073003170008, 62.45385034929177, 45.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.674073003170008, 62.45385034929177, 45.0, 67.0 ],
					"setstyle" : 1,
					"size" : 3
				}

			}
, 			{
				"box" : 				{
					"comment" : "on/off [1/0]",
					"id" : "obj-8",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 469.666666666666686, 7.5, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-10",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.666666666666686, 7.5, 30.0, 30.0 ]
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
					"patching_rect" : [ 353.333333333333371, 7.5, 30.0, 30.0 ]
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
					"patching_rect" : [ 295.0, 7.5, 30.0, 30.0 ]
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
					"presentation_rect" : [ 73.136978753170013, 40.45385034929177, 37.0, 34.0 ],
					"text" : "Gyro."
				}

			}
, 			{
				"box" : 				{
					"candicane2" : [ 0.019608, 0.254902, 0.035294, 1.0 ],
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
					"presentation_rect" : [ 65.136978753170013, 62.45385034929177, 50.0, 67.0 ],
					"setminmax" : [ -3.0, 3.0 ],
					"setstyle" : 1,
					"size" : 3
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
					"presentation_rect" : [ 11.0, 62.45385034929177, 50.0, 68.0 ],
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
					"presentation_rect" : [ 13.425994500000002, 40.45385034929177, 47.0, 20.0 ],
					"text" : "Accel."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 295.0, 62.265625, 194.0, 22.0 ],
					"text" : "riot"
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
					"patching_rect" : [ 325.566650390625, 105.265625, 25.0, 25.0 ]
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
					"patching_rect" : [ 295.0, 105.265625, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.849976003170013, 6.5, 75.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.849976003170013, 5.5, 77.0, 21.0 ],
					"text" : "RIoT"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ -2.5, 33.0, 172.0, 104.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.849976003170013, 27.0, 167.0, 109.0 ],
					"setminmax" : [ 0.0, 1.100000023841858 ],
					"setstyle" : 3
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-25", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-25", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 3 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-1104",
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
