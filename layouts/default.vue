<template>
  <div>
    <app-header />

    <section class="container">
      <div class="row">
        <div class="col-12">
          <nuxt />
        </div>
      </div>
    </section>
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
