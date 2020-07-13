<template lang="html">
    <Page>
        <ActionBar>
            <Label text="Calendar"></Label>
        </ActionBar>

        <GridLayout class="page__content">
            <RadCalendar :monthViewStyle='monthViewStyle' height="300"></RadCalendar>
        </GridLayout>
    </Page>
</template>

<script>
  export default {
    data() {
      return {
        message: "<!-- Browse page content goes here -->"
      };
    }
  }
</script>

<style lang="scss" scoped>
    // Start custom common variables
    @import "~@nativescript/theme/scss/variables/blue";
    // End custom common variables

    // Custom styles

</style>
