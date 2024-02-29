<template>
    <div v-if="$route.path != '/login' && $route.path != '/register'">
        <router-link to="/">Home</router-link>
    </div>
</template>

<style scoped>
</style>