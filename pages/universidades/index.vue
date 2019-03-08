<template>
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h1 class="h1">
          Universidades
        </h1>
        <hr>

        <div class="list-group">
          <nuxt-link
            v-for="item in regions"
            :key="item.id"
            :class="regionItemClasses(item.id)"
            :to="`/universidades/${item.slug}`"
            @click="() => currentRegion = item.id"
          >
            {{ item.name }}
          </nuxt-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  head() {
    return {
      title: 'Ministerio Aguilas de Jesús',
    };
  },

  data() {
    return {
      currentRegion: undefined,
    };
  },

  computed: {
    isCurrentRegion() {
      return id => id === this.currentRegion;
    },

    regionItemClasses() {
      return id => ({
        'list-group-item': true,
        'list-group-item-action': true,
        active: this.isCurrentRegion(id),
      });
    },
  },

  asyncData() {
    return {
      regions: [
        {
          id: 15,
          type: 'region',
          name: 'Arica y Parinacota',
          slug: 'arica-y-parinacota',
          lat: -18.5075,
          lng: -69.6451,
          url: '',
          parent_id: null,
        },
        {
          id: 1,
          type: 'region',
          name: 'Tarapacá',
          slug: 'tarapaca',
          lat: -20.164,
          lng: -69.5541,
          url: '',
          parent_id: null,
        },
        {
          id: 2,
          type: 'region',
          name: 'Antofagasta',
          slug: 'antofagasta',
          lat: -23.7503,
          lng: -69.6,
          url: '',
          parent_id: null,
        },
        {
          id: 3,
          type: 'region',
          name: 'Atacama',
          slug: 'atacama',
          lat: -27.5276,
          lng: -70.2494,
          url: '',
          parent_id: null,
        },
        {
          id: 4,
          type: 'region',
          name: 'Coquimbo',
          slug: 'coquimbo',
          lat: -30.8301,
          lng: -70.9816,
          url: '',
          parent_id: null,
        },
        {
          id: 5,
          type: 'region',
          name: 'Valparaíso',
          slug: 'valparaiso',
          lat: -32.9039,
          lng: -71.0262,
          url: '',
          parent_id: null,
        },
        {
          id: 13,
          type: 'region',
          name: 'Metropolitana de Santiago',
          slug: 'metropolitana-de-santiago',
          lat: -33.4417,
          lng: -70.6541,
          url: '',
          parent_id: null,
        },
        {
          id: 6,
          type: 'region',
          name: "Del Libertador Gral. Bernardo O'Higgins",
          slug: 'del-libertador-gral-bernanrdo-ohiggins',
          lat: -34.4294,
          lng: -71.0393,
          url: '',
          parent_id: null,
        },
        {
          id: 7,
          type: 'region',
          name: 'Del Maule',
          slug: 'del-maule',
          lat: -35.5892,
          lng: -71.5007,
          url: '',
          parent_id: null,
        },
        {
          id: 8,
          type: 'region',
          name: 'Del Biobío',
          slug: 'del-biobio',
          lat: -37.2442,
          lng: -72.4661,
          url: '',
          parent_id: null,
        },
        {
          id: 9,
          type: 'region',
          name: 'De la Araucanía',
          slug: 'de-la-araucania',
          lat: -38.5505,
          lng: -72.4382,
          url: '',
          parent_id: null,
        },
        {
          id: 14,
          type: 'region',
          name: 'De los Ríos',
          slug: 're-los-rios',
          lat: -39.9086,
          lng: -72.7034,
          url: '',
          parent_id: null,
        },
        {
          id: 10,
          type: 'region',
          name: 'De los Lagos',
          slug: 'de-los-lagos',
          lat: -42.1071,
          lng: -72.6425,
          url: '',
          parent_id: null,
        },
        {
          id: 11,
          type: 'region',
          name: 'Aysén del Gral. Carlos Ibañez del Campo',
          slug: 'aysen-del-gral-carlos-ibanez-del-campo',
          lat: -46.2772,
          lng: -73.6628,
          url: '',
          parent_id: null,
        },
        {
          id: 12,
          type: 'region',
          name: 'Magallanes y de la Antartica Chilena',
          slug: 'magallanes-y-de-la-antartica-chilena',
          lat: -54.3551,
          lng: -70.5284,
          url: '',
          parent_id: null,
        },
        {
          id: 16,
          type: 'region',
          name: 'Ñuble',
          slug: 'nuble',
          lat: -366.191,
          lng: -720.182,
          url: '',
          parent_id: null,
        },
      ],

      universities: [
        {
          id: 1,
          name: 'Universidad de Santiago de Chile',
          slug: 'universidad-de-santiago-de-chile',
          region_id: 13,
        },
        {
          id: 2,
          name: 'Ponteficia Universidad Catolica de Valparaíso',
          slug: 'pontificia-universidad-catolica-de-valparaiso',
          region_id: 5,
        },
      ],
    };
  },
};
</script>
