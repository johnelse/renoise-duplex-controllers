--[[----------------------------------------------------------------------------
-- Duplex.APC40-MKII
----------------------------------------------------------------------------]]--

duplex_configurations:insert {
  -- configuration properties
  name = "Matrix + Levels + Transport",
  pinned = true,

  -- device properties
  device = {
    class_name = "APC40MKII",
    display_name = "APC40-MKII",
    device_port_in = "APC40 mkII MIDI 1",
    device_port_out = "APC40 mkII MIDI 1",
    control_map = "Controllers/APC40-MKII/Controlmaps/APC40-MKII.xml",
    thumbnail = "Controllers/APC40-MKII/APC40-MKII.bmp",
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
          group_name = "Bank",
          index = 2,
        },
        next_seq_page = {
          group_name = "Bank",
          index = 3,
        },
      },
      options = {
        follow_track = 1,
        switch_mode = 4, -- TODO: doesn't seem to work?
      },
    },
    TrackSelector = {
      mappings = {
        prev_page = {
          group_name = "Bank",
          index = 1,
        },
        next_page = {
          group_name = "Bank",
          index = 4,
        },
        select_track = {
          group_name = "SelectTrack",
          index = 1,
        },
      },
    },
    Mixer = {
      mappings = {
        panning = {
          group_name = "Pan",
        },
        levels = {
          group_name = "Levels",
        },
        master = {
          group_name = "Master",
        },
      },
      options = {
        take_over_volumes = 2, -- TODO: doesn't seem to work?
      },
    },
    Transport = {
      mappings = {
        bpm_decrease = {
          group_name = "BPM",
          index = 1,
        },
        bpm_increase = {
          group_name = "BPM",
          index = 2,
        },
      },
    },
    Effect = {
      mappings = {
        device_name = {
          group_name = "EffectName",
          index = 1,
        },
        parameters = {
          group_name = "EffectParameters",
        },
        device_prev = {
          group_name = "EffectNavigation", -- TODO: Need to double tap, wrong button mode?
          index = 1,
        },
        device_next = {
          group_name = "EffectNavigation", -- TODO: Need to double tap, wrong button mode?
          index = 2,
        },
        param_prev = {
          group_name = "EffectNavigation",
          index = 3,
        },
        param_next = {
          group_name = "EffectNavigation",
          index = 4,
        },
      },
    },
  }
}

