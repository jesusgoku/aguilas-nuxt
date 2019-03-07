<template>
  <div>
    <app-header />

    <nuxt />
  </div>
</template>

<script>
import Header from '~/components/Header';

export default {
  components: {
    AppHeader: Header,
  },
};
</script>

<style lang="sass">
@import '../assets/sass/custom.scss'
</style>
