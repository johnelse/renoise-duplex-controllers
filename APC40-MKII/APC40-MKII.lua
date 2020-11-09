--[[----------------------------------------------------------------------------
-- Duplex.APC40MKII
----------------------------------------------------------------------------]]--

--[[

Inheritance: APC40MKII > MidiDevice > Device

A device-specific class, valid for Akai APCKEY25 models

--]]


--==============================================================================

class "APC40MKII" (MidiDevice)

function APC40MKII:__init(display_name, message_stream, port_in, port_out)
  TRACE("APC40MKII:__init", display_name, message_stream, port_in, port_out)

  MidiDevice.__init(self, display_name, message_stream, port_in, port_out)

  self.allow_zero_velocity_note_on = true

end

--------------------------------------------------------------------------------

--- override default Device method
-- @see Device.output_boolean

-- function APCKEY25:output_boolean(pt,xarg,ui_obj)
-- 
--   local value = nil
-- 
--   if (xarg.group_name == "Slots") then
--     -- clip launch buttons can have multiple colors
--     local red = (pt.color[1]==0xff)
--     local green = (pt.color[2]==0xff)
--     if red and green then
--       value = 5 -- yellow
--     elseif red then
--       value = 3 -- red
--     elseif green then
--       value = 1 -- green
--     else
--       value = 0 -- turned off
--     end
--   else
--     -- normal LED buttons are monochrome
--     value = (pt.val == true) and xarg.maximum or xarg.minimum
--   end
-- 
--   return value
-- 
-- end

