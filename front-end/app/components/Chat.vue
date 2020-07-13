<template lang="html">
    <Page>
        <ActionBar>
            <Label text="Chat"></Label>
        </ActionBar>

        <StackLayout ~mainContent>
                <DockLayout>
                    <StackLayout dock="top" height="90%" width="100%" style="">

                        <ListView for="item in conversations" :key="index"
                            height="100%" separatorColor="transparent" id="listView">
                            <v-template>

                                <StackLayout orientation="horizontal" style="border-bottom-width:1;border-bottom-color:#E4E4E4;"
                                    padding="10">
                                    <StackLayout width="20%">
                                        <Image :src="item.convFriendImg"
                                            stretch="aspectFill" class="conImg" />
                                    </StackLayout>
                                    <StackLayout marginLeft="10" paddingTop="3"
                                        width="50%">
                                        <Label :text="item.convFriendName"
                                            :class="'convFriendName ' + item.read" />
                                        <Label :text="item.convText" :class="'convTextOut ' + item.read" />
                                    </StackLayout>
                                    <StackLayout marginLeft="10" paddingTop="3"
                                        width="60%">
                                        <Label :text="item.convDate" :class="'convDateOut ' + item.read" />
                                        <Label text="" :visibility="item.seenVisibility"
                                            style="font-size:17;text-align:center;margin-top:12;color:#1aa3ff;"
                                            class="font-awesome" />
                                    </StackLayout>
                                </StackLayout>

                            </v-template>
                        </ListView>

                    </StackLayout>

                </DockLayout>

            </StackLayout>
    </Page>
</template>

<script>
  export default {
    data() {
      return {
        message: "<!-- Chat page content goes here -->",
        conversations: [{
                convFriendImg: "~/assets/images/bourne.jpg",
                read: "notRead",
                convFriendName: "Jason",
                convText: "ok but why?",
                convDate: "19:01",
                seenVisibility: "collapse"
            },
            {
                convFriendImg: "~/assets/images/landy.jpg",
                read: "read",
                convFriendName: "Pamela",
                convText: "Okay",
                convDate: "18:43",
                seenVisibility: "collapse"
            },
            {
                convFriendImg: "~/assets/images/rocky.jpg",
                read: "read",
                convFriendName: "Rocky",
                convText: "You: Sorry I Can't",
                convDate: "18:21",
                seenVisibility: "visible"
            }
        ]
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
