import Vue from "nativescript-vue";
import CalendarView from 'nativescript-ui-calendar/vue';

// Adds RadCalendar
Vue.use(CalendarView);

import App from "./components/App";


new Vue({
    render: h => h(App)
}).$start();
