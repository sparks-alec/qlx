qlx
===

EOS Lighting Console control for QLab
Documentation available at www.qlx.io

Starting with software version 1.9.5, EOS and ION consoles could receive commands over UDP serial. At its simplest, this can just be a laptop connected to the console via ethernet cable, or a wireless access point can be connected to the console allowing for wireless control.

The obvious use case for this is to allow QLab to trigger cues on the light console. It's easy to synchronize a lightning flash effect with a thunder sound cue, or fade out the lights when a video cue is started.

QLab doesn't include any sort of UDP or lighting cues, but does allow for Script Cues which can be programmed to do whatever you want. QLX is a QLab plugin (of sorts) that uses script cues to do some hidden behind-the-scenes magic to create lighting cues.


Console Setup
---

You'll need the Console's IP address. You can find it in Browser > Utilities > Diagnostics.

Next, head over to Browser > Setup > Show Settings, and select Show Control. There's only a few settings to change.

- Ensure String RX is Enabled.
- Set the String RX Port to a number. I personally like 44.

This number and the IP address are the only pieces of information you'll need to remember.

These settings are saved on a per-show basis. You'll have to do those two steps for every new show you want to use QLX with.

QLab Setup
---

Start by downloading QLX- you'll get QLXdemo.cues and QLX.scpt. Open QLXdemo.cues in QLab. In the QLXCONFIG Cue List, you'll find the settings for QLX. Rename the Cues to reflect the

- Light Console IP address
- String RX Port
- Folder path to QLX.scpt, colon-separated. It should look like this:


    Macintosh HD:Users:User Name:Desktop:QLX.scpt
Make sure you don't change the Cue Number or Script, just the Name.

Connect the computer to the EOS console, either via an ethernet cable or WiFi via a wireless access point connected to the console via ethernet.

After configuration, you should be able to run any of the demo Cues to see how the light console reacts.

QLX Syntax
---

Every QLX cue is a QLab Script Cue. The Script of the Cue should be this snippet. The Cue's functionality is modified by renaming it, you don't have to touch any code.

    run script file (q name of cue "LXPATH" in front workspace)

QLXGO Cues are for easily running specific cues. The cue is run from the Default Cue List configured in LXConfig.

    QLXGO 1
    House Full/QLXGO 1
    QLXGO 45.2
    QLXGO (when no number is assigned, QLX defaults to the next cue, emulating the GO button)
    
QLX Cues are for EOS events, which means they can simulate button presses or fader moves. ETC has a list of every command you can use in their KnowledgeBase.

    QLX Cue 1 30 (runs cue 30 on list 1)
    QLX Grandmaster 1 50 (sets grandmaster to 50%)
    QLX SubDown 2 (emulates pressing and holding the bump button on submaster 2)
    QLX SubUp 2 (emulates releasing the bump button on submaster 2)
    
QLXC commands are sent directly to the command line of the console, as if you had typed it in directly.

    QLXC Chan 1 at 90
    QLXC Chan 1 Thru 99 at 25
    QLXC Address 35 at Full
    QLXC Record Cue 1
    QLXC Sub 4 at Out
    QLXC Go To Cue 3

###Comments

All QLX Cues can have a descriptive comment prepended, separated with a "/" character. This is useful for keeping your cue list organized and easily operated.

    House Half /QLXGO 2
    DS Special/QLXGO 12
    Shutter Projector /QLXC Chan 513 at Full
