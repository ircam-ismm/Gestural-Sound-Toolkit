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
		"rect" : [ 134.0, 172.0, 1249.0, 879.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 14.0,
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 97.397430419921875, 72.54269452539063, 151.602569580078125, 42.0 ],
					"text" : "space bar to start/stop recording"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 14.0,
					"id" : "obj-4",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 155.5, 169.602569580078125, 57.0 ],
					"text" : "alternatively\nbutton A\npress during recording"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.0, 594.0, 421.0, 33.0 ],
					"text" : "mapping likeliest index to sound index"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 51.0, 204.975707533203149, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 51.0, 172.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 51.0, 113.54269452539063, 100.0, 22.0 ],
					"text" : "sel 32"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 51.0, 82.54269452539063, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 51.0, 48.54269452539063, 100.0, 22.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 284.5, 300.135253431640649, 306.0, 22.0 ],
					"text" : "join 3"
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
					"id" : "obj-5",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "sp.bandpass.maxpat",
					"numinlets" : 3,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.5, 168.816161634765621, 133.731216430664062, 116.319091796875 ],
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
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "sp.acc.intensity.maxpat",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "float", "float", "float" ],
					"patching_rect" : [ 427.645622253417969, 168.816161634765621, 133.731216430664062, 116.347579956054688 ],
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
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "ml.classification.hhmm.maxpat",
					"numinlets" : 8,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 112.397430419921875, 393.0, 305.0, 184.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-23",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 186.329050699869811, 600.0, 50.0, 21.0 ]
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
					"patching_rect" : [ 284.0, 168.816161634765621, 133.731216430664062, 116.319091796875 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.678431, 0.756863, 0.0 ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-41",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "in.comote.maxpat",
					"numinlets" : 6,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 284.0, 2.975738525390625, 163.0, 132.566956000000005 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.74902 ],
					"bgmode" : 0,
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
					"patching_rect" : [ 112.397430419921875, 772.9757080078125, 182.97576904296875, 110.099037170410156 ],
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
					"name" : "synth.scratch.samples.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 112.397430419921875, 651.9757080078125, 240.79486083984375, 109.320236206054688 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-11", 0 ]
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
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"midpoints" : [ 60.5, 369.487853766601575, 162.754573277064736, 369.487853766601575 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 264.897430419921875, 582.5, 195.829050699869811, 582.5 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-41", 2 ]
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
					"order" : 2,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 2 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-1844",
		"parameters" : 		{
			"obj-12::obj-18::obj-88" : [ "live.toggle[9]", "live.toggle", 0 ],
			"obj-12::obj-18::obj-92" : [ "live.toggle[8]", "live.toggle", 0 ],
			"obj-12::obj-22" : [ "live.gain~", "live.gain~", 0 ],
			"obj-26::obj-2" : [ "live.gain~[5]", "live.gain~[4]", 0 ],
			"obj-41::obj-55" : [ "live.text", "live.text", 0 ],
			"obj-41::obj-56" : [ "live.text[1]", "live.text", 0 ],
			"obj-41::obj-60" : [ "live.text[3]", "live.text[3]", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-12::obj-18::obj-88" : 				{
					"parameter_longname" : "live.toggle[9]"
				}
,
				"obj-12::obj-18::obj-92" : 				{
					"parameter_longname" : "live.toggle[8]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "comote-connect-resize.js",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "comote-connect.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "comote-screenshot-3.png",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
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
				"name" : "helpstarter.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "imubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "in.comote.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-interfaces/CoMo.te",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.classification.hhmm.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/machine-learning",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-analysis/machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.hhmm.maxhelp",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/help",
				"patcherrelativepath" : "../../../../Max 9/Packages/MuBu For Max/help",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "mubu.record.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.scroll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.setlabels.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/patchers",
				"patcherrelativepath" : "../../../../Max 9/Packages/MuBu For Max/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.track.mxo",
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
				"name" : "sp.bandpass.maxpat",
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
				"name" : "synth.scratch.samples.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"patcherrelativepath" : "../../../../Max 9/Packages/Gestural-Sound-Toolkit-mubuscroll/patchers/mod-synthesis",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
