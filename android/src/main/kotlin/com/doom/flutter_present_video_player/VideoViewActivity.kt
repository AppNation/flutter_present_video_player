package com.doom.flutter_present_video_player

import android.app.Activity
import android.net.Uri
import android.os.Bundle
import android.widget.MediaController
import android.widget.VideoView

class VideoViewActivity : Activity() {

    companion object {
        const val URL_KEY = "url"
    }

    private lateinit var videoUrl: String

    private lateinit var videoView: VideoView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_videoview)
        videoView = findViewById(R.id.videoView)

        if (intent.extras == null || !intent.hasExtra(URL_KEY)) {
            finish()
        }

        videoUrl = intent.getStringExtra(URL_KEY)

        videoView.setVideoURI(Uri.parse(videoUrl))

        val mediaController = MediaController(this)
        mediaController.setAnchorView(videoView)
        videoView.setMediaController(mediaController)
    }

    override fun onPause() {
        super.onPause()
        videoView.stopPlayback()
    }

    override fun onResume() {
        super.onResume()
        videoView.start()
    }
}