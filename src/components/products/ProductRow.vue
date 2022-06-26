<template>
    <li {{ attrs }}
        class="flex flex-both pad-b-2 pad-both-2 border-bottom margin-b-2"
        title="{{ description }}">
        <div title="Some text...">
            ID: {{ productId }}, {{ name }}
        </div>
        <div class="row-buttons">
            <strong class="b cred cbrown-hover pointer"
                data-action="delete"
                data-id="0"
                title="Eliminar producto {{ name }}, ID: {{ productId }}">
                x
            </strong>
        </div>
    </li>
</template>

<script>
    export default {
        name: 'ProductRow',
        props: {
            attrs      : String,
            description: String,
            name       : String,
            productId  : Number,
        },
    };
</script>

<style scoped>
  /* Código CSS */
</style>
