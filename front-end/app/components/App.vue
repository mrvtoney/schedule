<template lang="html">
    <BottomNavigation>
        <TabStrip>
            <TabStripItem class="navigation__item">
                <Label text="Gallery"></Label>
                <Image src.decode="font://&#xf015;" class="fas t-36"></Image>
            </TabStripItem>
            <TabStripItem class="navigation__item">
                <Label text="Chat"></Label>
                <Image src.decode="font://&#xf086;" class="far t-36"></Image>
            </TabStripItem>
            <TabStripItem class="navigation__item">
                <Label text="Calendar"></Label>
                <Image src.decode="font://&#xf133;" class="far t-36"></Image>
            </TabStripItem>
            <TabStripItem class="navigation__item">
                <Label text="Settings"></Label>
                <Image src.decode="font://&#xf509;" class="fas t-36"></Image>
            </TabStripItem>
        </TabStrip>

        <TabContentItem>
            <Frame id="gallery">
                <Gallery/>
            </Frame>
        </TabContentItem>

        <TabContentItem>
            <Frame id="chat">
                <Chat/>
            </Frame>
        </TabContentItem>

        <TabContentItem>
            <Frame id="calendar">
                <Calendar/>
            </Frame>
        </TabContentItem>

        <TabContentItem>
            <Frame id="settings">
                <Settings/>
            </Frame>
        </TabContentItem>

    </BottomNavigation>
</template>

<script>
  import Gallery from "./Gallery.vue";
  import Calendar from "./Calendar.vue";
  import Settings from "./Settings.vue";
  import Chat from "./Chat.vue";

  export default {
    components: {
      Gallery,
      Calendar,
      Chat,
      Settings,
    }
  };
</script>

<style lang="scss">
    // Start custom common variables
    @import "~@nativescript/theme/scss/variables/blue";
    // End custom common variables

    // Custom styles

</style>
