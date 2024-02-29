import "./assets/global.css"

import App from "./App.vue"

import HomePage from "./pages/Home.vue"
import NotFoundPage from "./pages/NotFound.vue"

import { createApp } from "vue"
import { createRouter, createWebHistory } from "vue-router"

const routes = [
    { path: "/", component: HomePage },
    { path: "/:notfound", component: NotFoundPage }
]

const router = createRouter({
    history: createWebHistory(),
    routes
})
var app = createApp(App);
app.use(router);
app.mount('#app');