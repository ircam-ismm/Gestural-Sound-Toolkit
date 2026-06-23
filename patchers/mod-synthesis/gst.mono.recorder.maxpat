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
        "rect": [ 34.0, 93.0, 185.0, 195.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.0, 42.0, 143.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 70.0, 35.0, 108.0, 20.0 ],
                    "text": "On/Off audio input"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 207.0, 89.0, 143.0, 33.0 ],
                    "presentation": 1,
                    "presentation_linecount": 3,
                    "presentation_rect": [ 110.0, 63.0, 66.0, 47.0 ],
                    "text": "Create an empty sound file"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-25",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 181.0, 56.0, 160.0, 20.0 ],
                    "presentation": 1,
                    "presentation_linecount": 2,
                    "presentation_rect": [ 112.0, 128.0, 65.0, 33.0 ],
                    "text": "Start/Stop recording"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 67.5, 462.0, 32.0, 20.0 ],
                    "text": "dac~"
                }
            },
            {
                "box": {
                    "annotation": "direct out on dac~ 1 2",
                    "annotation_name": "direct out on dac~ 1 2",
                    "channels": 1,
                    "hint": "direct out on dac~ 1 2",
                    "id": "obj-37",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 67.5, 269.0, 48.0, 136.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 27.0, 76.0, 51.0, 107.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_linknames": 1,
                            "parameter_longname": "directOut12",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "Monitor",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "directOut12"
                }
            },
            {
                "box": {
                    "annotation": "create an empty soundfile",
                    "annotation_name": "create an empty soundfile",
                    "hint": "create an empty soundfile",
                    "id": "obj-8",
                    "maxclass": "live.button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 187.0, 89.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 76.5, 20.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "createSf",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "createSf",
                            "parameter_type": 2
                        }
                    },
                    "varname": "createSf"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue",
                    "fontsize": 14.0,
                    "id": "obj-61",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 67.5, 11.0, 171.0, 23.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 7.0, 171.0, 23.0 ],
                    "text": "Record sample (mono)"
                }
            },
            {
                "box": {
                    "annotation": "input level",
                    "hint": "input level",
                    "id": "obj-5",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numleds": 20,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 100.5, 269.0, 80.0, 13.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 8.0, 35.0, 17.0, 148.0 ],
                    "varname": "inLevel"
                }
            },
            {
                "box": {
                    "annotation": "Audio on/off",
                    "hint": "Audio on/off",
                    "id": "obj-6",
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 67.5, 56.0, 45.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 27.0, 35.0, 34.0, 34.0 ],
                    "varname": "audioOnOff"
                }
            },
            {
                "box": {
                    "annotation": "start/stop recording",
                    "annotation_name": "start/stop recording",
                    "hint": "start/stop recording",
                    "id": "obj-4",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 161.0, 56.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 80.0, 134.0, 20.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_linknames": 1,
                            "parameter_longname": "startStop",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "startStop",
                            "parameter_type": 2
                        }
                    },
                    "varname": "startStop"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 187.0, 123.0, 37.0, 22.0 ],
                    "text": "open"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 161.0, 180.0, 61.0, 22.0 ],
                    "text": "sfrecord~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 1 ],
                    "order": 0,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "order": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "order": 2,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 77.0, 184.5, 110.0, 184.5 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "toolbaradditions": [ "s2n", "Modalys", "Gestural-Sound-Toolkit" ]
    }
}