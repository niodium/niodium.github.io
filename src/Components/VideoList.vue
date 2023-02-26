<template>
  <div class="card">
    <video class="object-fit-contain" controls autoplay loop :key="currentVideo">
      <source :src="currentVideo.src" :type="currentVideo.type">
    </video>
  </div>
</template>

<script>
export default {
  name: "VideoList",
  props: {
    currentVideo: {
      type: Object,
      required: true
    }
  }
}
</script>

<style scoped>

</style>