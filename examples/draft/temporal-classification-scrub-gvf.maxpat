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
		"rect" : [ 134.0, 146.0, 747.0, 937.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 111.0, 388.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.0, 357.0, 33.0, 18.0 ],
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 357.0, 69.0, 18.0 ],
					"text" : "follow"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 278.0, 357.0, 69.0, 18.0 ],
					"text" : "train"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-22",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 356.020462036132869, 357.0, 69.0, 29.0 ],
					"text" : "record start:stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 363.0, 444.5, 150.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 195.0, 388.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 278.0, 388.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 361.0, 388.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 194.0, 13.975739000000001, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
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
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 29.0, 158.6566162109375, 133.731216430664062, 116.319091796875 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
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
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 323.654853820800781, 158.6566162109375, 133.731216430664062, 116.347579956054688 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
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
					"name" : "sp.acc.intensity.maxpat",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "float", "float", "float" ],
					"patching_rect" : [ 170.736831665039062, 158.6566162109375, 133.731216430664062, 116.347579956054688 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 250.333333333333371, 508.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
					"bgmode" : 2,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-41",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "in.riotbitalino.maxpat",
					"numinlets" : 4,
					"numoutlets" : 4,
					"offset" : [ -6.0, 0.0 ],
					"outlettype" : [ "", "", "", "float" ],
					"patching_rect" : [ 28.0, 13.975739000000001, 163.0, 132.566956000000005 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 173.0, 535.5, 69.0, 29.0 ],
					"text" : "recognised gesture"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 305.666666666666686, 555.0, 69.0, 29.0 ],
					"text" : "normalized likelihoods"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 195.0, 613.5, 61.0, 18.0 ],
					"text" : "progression"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 29.0, 595.0, 29.5, 22.0 ],
					"text" : "t 1 i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.737254901960784, 0.733333333333333, 0.733333333333333, 1.0 ],
					"candycane" : 8,
					"id" : "obj-5",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 305.666666666666686, 508.0, 67.0, 45.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1,
					"size" : 5
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 173.0, 588.5, 151.0, 23.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"setstyle" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
					"bgmode" : 2,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "drawing.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 548.0, 13.975739000000001, 163.0, 132.56695556640625 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "ml.temporal.classification.gvf.maxpat",
					"numinlets" : 5,
					"numoutlets" : 7,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 29.0, 423.9757080078125, 351.0, 76.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 29.0, 763.9757080078125, 182.97576904296875, 110.099037170410156 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.65045, 0.65045, 0.65045, 0.0 ],
					"bgmode" : 2,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "synth.scrub.samples.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 29.0, 627.9757080078125, 240.79486083984375, 111.320236206054688 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 557.5, 319.759201287109363, 38.5, 319.759201287109363 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 701.5, 336.759201287109363, 120.5, 336.759201287109363 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 3 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-14", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-14", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 3 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 2 ],
					"midpoints" : [ 182.5, 611.98785400390625, 186.363240559895843, 611.98785400390625 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 1 ],
					"midpoints" : [ 180.236831665039062, 285.004196166992188, 315.927059173583984, 285.004196166992188, 315.927059173583984, 147.6566162109375, 447.886070251464844, 147.6566162109375 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 4 ],
					"source" : [ "obj-7", 0 ]
				}

			}
 ],
		"originid" : "pat-714",
		"parameters" : 		{
			"obj-12::obj-15::obj-88" : [ "live.toggle[5]", "live.toggle", 0 ],
			"obj-12::obj-15::obj-92" : [ "live.toggle[2]", "live.toggle", 0 ],
			"obj-12::obj-2" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-25::obj-13" : [ "live.toggle", "live.toggle", 0 ],
			"obj-25::obj-8::obj-17" : [ "live.toggle[1]", "live.toggle[1]", 0 ],
			"obj-26::obj-2" : [ "live.gain~[5]", "live.gain~[4]", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-12::obj-15::obj-88" : 				{
					"parameter_longname" : "live.toggle[5]"
				}
,
				"obj-12::obj-15::obj-92" : 				{
					"parameter_longname" : "live.toggle[2]"
				}
,
				"obj-25::obj-13" : 				{
					"parameter_longname" : "live.toggle"
				}
,
				"obj-25::obj-8::obj-17" : 				{
					"parameter_longname" : "live.toggle[1]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "drawing.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/lcd",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/lcd",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "imubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "in.riotbitalino.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/riot",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/riot",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.temporal.classification.gvf.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/machine-learning",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.granular~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.gvf.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
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
				"name" : "pipo.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "riotbitalino.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/riot",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/riot",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sid.output.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.acc.intensity.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.gate.float.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sp.orientation.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/signal-processing",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/signal-processing",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.ctrl.soundpool.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.scrub.samples.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
