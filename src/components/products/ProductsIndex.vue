<template>
    <section class="bordered rounded pad-2 pad-both-5 top-2"
        id="index">
        <h3 class="flex flex-both">
            <span>Lista de productos (vue)</span>
            <span class="cred" id="close_index">Cerrar</span>
        </h3>

        <ul id="products">
            <ProductRow
                attrs="hidden"
                description="Some text..."
                name="Demo"
                :productId="0"
            />
        </ul>
    </section>
</template>

<script>
    import axios from "axios";
    import ProductRow from './ProductRow.vue';

    export default {
        name: 'ProductsIndex',
        components: [
            ProductRow
        ],
        created() {
            axios.get("https://jsonplaceholder.typicode.com/todos/1").then((result) => {
                if (result.status === 200 && result.data) {
                    paintProducts(result.data);
                    return;
                }
                console.error('Err fetching data');
            });

            function paintProducts(products)
            {
                console.log(products);
            }
        }
    };
</script>

<style scoped>
  /* Código CSS */
</style>
