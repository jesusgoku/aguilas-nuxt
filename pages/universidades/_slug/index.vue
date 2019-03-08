<template>
  <h1>{{ slug }}</h1>
</template>

<script>
export default {
  validate({ params }) {
    return /^[a-z-]+$/.test(params.slug);
  },

  asyncData({ params }) {
    const { slug } = params;

    return {
      slug,
    };
  },
};
</script>
