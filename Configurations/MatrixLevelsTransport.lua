--[[----------------------------------------------------------------------------
-- Duplex.Akai-APCKEY25
----------------------------------------------------------------------------]]--

duplex_configurations:insert {
  -- configuration properties
  name = "Matrix + Levels + Transport",
  pinned = true,

  -- device properties
  device = {
    class_name = "APCKEY25",
    display_name = "Akai-APCKEY25",
    device_port_in = "APC Key 25",
    device_port_out = "APC Key 25",
    control_map = "Controllers/Akai-APCKEY25/Controlmaps/Akai-APCKEY25.xml",
    thumbnail = "Controllers/Akai-APCKEY25/Akai-APCKEY25.bmp",
    protocol = DEVICE_PROTOCOL.MIDI
  },

  applications = {
    Matrix = {
      mappings = {
        matrix = {
          group_name = "Slots",
        },
        triggers = {
          group_name = "Triggers",
        },
        prev_seq_page = {
          group_name = "Move",
          index = 1,
        },
        next_seq_page = {
          group_name = "Move",
          index = 2,
        },
      },
      options = {
        follow_track = 1,
      },
    },
    TrackSelector = {
      mappings = {
        prev_page = {
          group_name = "Move",
          index = 3,
        },
        next_page = {
          group_name = "Move",
          index = 4,
        },
        select_track = {
          group_name = "TrackSelect",
          index = 1,
        },
      },
    },
    Mixer = {
      mappings = {
        levels = {
          group_name = "Encoders",
        },
      },
    },
    Transport = {
      mappings = {
        stop_playback = {
          group_name = "Stop",
          index = 1,
        },
        start_playback = {
          group_name = "Transport",
          index = 1,
        },
        edit_mode = {
          group_name = "Transport",
          index = 2,
        },
      },
    },
  }
}

