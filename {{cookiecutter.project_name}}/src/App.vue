<template>
  <VuetifyLayout>
    <{{cookiecutter.component_name}} />
  </VuetifyLayout>
</template>

<script>
import VuetifyLayout from '@/VuetifyLayout.vue';

export default {
  name: 'app',
  components: { VuetifyLayout },
};
</script>
