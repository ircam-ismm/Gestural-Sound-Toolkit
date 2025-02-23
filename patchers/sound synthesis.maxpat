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
		"rect" : [ 50.0, 160.0, 1644.0, 923.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1177.794861000000083, 177.0, 151.0, 22.0 ],
					"text" : "loadmess C74:/media/msp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 141.0, 173.0, 151.0, 22.0 ],
					"text" : "loadmess C74:/media/msp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 352.0, 173.0, 44.0, 22.0 ],
					"text" : "noise~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 970.0, 128.0, 219.0, 35.0 ],
					"text" : "Granular Synthesis"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.397430419921875, 128.0, 170.0, 35.0 ],
					"text" : "FM Synthesis"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 408.0, 128.0, 122.0, 35.0 ],
					"text" : "Filtering"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"fontsize" : 24.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 6.0, 212.0, 35.0 ],
					"text" : "Sound Synthesis"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1569.0, 409.0, 24.0, 24.0 ]
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
					"id" : "obj-60",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "synth.filter.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 352.0, 208.0, 241.79486083984375, 145.891738891601562 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 649.0, 207.999999945800766, 240.79486083984375, 145.891738891601562 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 956.0, 212.0, 240.794860999999997, 145.891739000000001 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 326.0, 508.0, 98.0, 35.0 ],
					"text" : "Output"
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
					"patching_rect" : [ 428.0, 491.0, 182.97576904296875, 86.099037170410156 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
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
					"patching_rect" : [ 47.0, 208.0, 240.79486083984375, 145.891738891601562 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.0, 128.0, 122.0, 35.0 ],
					"text" : "Soundfiles"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 4 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 4 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
 ],
		"originid" : "pat-4421",
		"parameters" : 		{
			"obj-15::obj-18::obj-88" : [ "live.toggle[20]", "live.toggle", 0 ],
			"obj-15::obj-18::obj-92" : [ "live.toggle[17]", "live.toggle", 0 ],
			"obj-15::obj-22" : [ "live.gain~", "live.gain~", 0 ],
			"obj-20::obj-15::obj-88" : [ "live.toggle[19]", "live.toggle", 0 ],
			"obj-20::obj-15::obj-92" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-20::obj-2" : [ "live.gain~[3]", "live.gain~", 0 ],
			"obj-26::obj-2" : [ "live.gain~[5]", "live.gain~[4]", 0 ],
			"obj-40::obj-2" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-60::obj-2" : [ "live.gain~[2]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-15::obj-18::obj-88" : 				{
					"parameter_longname" : "live.toggle[20]"
				}
,
				"obj-15::obj-18::obj-92" : 				{
					"parameter_longname" : "live.toggle[17]"
				}
,
				"obj-15::obj-22" : 				{
					"parameter_longname" : "live.gain~",
					"parameter_shortname" : "live.gain~"
				}
,
				"obj-20::obj-15::obj-88" : 				{
					"parameter_longname" : "live.toggle[19]"
				}
,
				"obj-20::obj-15::obj-92" : 				{
					"parameter_longname" : "live.toggle[10]"
				}
,
				"obj-20::obj-2" : 				{
					"parameter_longname" : "live.gain~[3]"
				}
,
				"obj-26::obj-2" : 				{
					"parameter_longname" : "live.gain~[5]"
				}
,
				"obj-60::obj-2" : 				{
					"parameter_longname" : "live.gain~[2]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "FM-synth-adsr.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "FM-synth-const.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "imubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.granular~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sid.output.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.FM.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.ctrl.soundpool.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.filter.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.scratch.samples.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "synth.scrub.samples.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-synthesis",
				"patcherrelativepath" : "./mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
