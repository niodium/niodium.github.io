<template>
  <nav class="navbar fixed-top bg-body-secondary">
    <div class="container">
      <a class="navbar-brand" href="#">rnd.fun</a>
      <button class="btn btn-outline-warning" @click="getRandomVideo">random</button>
    </div>
  </nav>
  <main class="container">
    <VideoList :currentVideo="currentVideo"/>
  </main>
</template>

<script>
import VideoList from "@/Components/VideoList";

export default {
  name: "App",
  components: {
    VideoList
  },
  data() {
    return {
      currentVideo: {},
      videos: [
        {"src": "https://giant.gfycat.com/FrayedMisguidedBedlingtonterrier.mp4", "type": "video/mp4"},
        {"src": "https://zippy.gfycat.com/AdorableSaneArabianwildcat.mp4", "type": "video/mp4"},
        {"src": "https://giant.gfycat.com/FelineDependableGalapagostortoise.mp4", "type": "video/mp4"}
      ]
    }
  },
  methods: {
    getRandomVideo() {
      let nextVideo = this.videos[Math.floor(Math.random() * this.videos.length)]

      while (this.currentVideo === nextVideo) {
        nextVideo = this.videos[Math.floor(Math.random() * this.videos.length)]
      }
      this.currentVideo = nextVideo
    }
  },
  mounted() {
    this.getRandomVideo()
  }
}
</script>

<style>
</style>
