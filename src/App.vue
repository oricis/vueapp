<template>
    <div>
        <img alt="Vue logo" src="./assets/logo.png">

        <ProductsIndex />
    </div>
</template>

<script>
    import ProductsIndex from './components/products/ProductsIndex.vue';

    export default {
        name: 'App',
        components: {
            ProductsIndex
        }
    }
</script>

<style>
    .bordered {
        border: 1px solid var(--main_color)
    }

    #app {
        font-family: Avenir, Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
        margin-top: 60px;
    }
</style>
