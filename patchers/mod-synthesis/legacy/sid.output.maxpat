{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 93.0, 193.0, 94.0 ],
        "openinpresentation": 1,
        "default_fontsize": 10.0,
        "boxes": [
            {
                "box": {
                    "comment": "level in dB [-70 0] ",
                    "id": "obj-7",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 90.0, 30.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "lastchannelcount": 1,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "orientation": 1,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 19.0, 82.5, 136.0, 41.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.0, 23.0, 136.0, 41.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "ogain",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "ogain",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "ogain"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Light",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 191.0, 37.0, 178.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 6.0, 4.0, 178.0, 18.0 ],
                    "text": "Master Sound Output (mc)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 175.5, 147.5, 119.0, 18.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 69.0, 75.0, 111.0, 18.0 ],
                    "text": "Press to Start the DAC"
                }
            },
            {
                "box": {
                    "comment": "Audio input 1",
                    "id": "obj-20",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 19.0, 30.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "mc.ezdac~",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 19.0, 134.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 143.0, 25.0, 37.0, 37.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-2": [ "ogain", "ogain", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}