package meta.state;

import vlc.MP4Handler;
import sys.FileSystem;
import meta.MusicBeat.MusicBeatState;

class VideoState extends MusicBeatState {

    public static var videoName:String;

    override public function create() {
        super.create();

        #if android
        var filepath:String = Paths.video(videoName);
        if (!FileSystem.exists(filepath)) {
            close();
            return;
        }

        
        
            close();
            return;
        }
        #end
    }

    public function close() 
        Main.switchState(this, new PlayState());
}
