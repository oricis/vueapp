<template>
    <section class="bordered rounded pad-2 pad-both-5 top-2"
        id="create_or_edit">
        <h3 class="flex flex-both">
            <span><span id="form_action">Crear</span> producto (web)</span>
            <span class="cred" id="close_create_or_edit">Cerrar</span>
        </h3>

        <form method="POST" action="">
            <div class="form-group">
                <label for="name">Nombre</label>
                <input type="text" name="name" id="name" maxlength="100">
            </div>
            <div class="form-group">
                <label for="description">Descripción</label>
<textarea name="description" id="description" maxlength="500"></textarea>
            </div>
            <div class="form-group">
                <label for="price">Precio</label>
                <input type="number"
                    id="price"
                    min="{{ $priceMin ?? 1 }}"
                    name="price"
                    step="{{ $priceStep ?? 0.5 }}">
            </div>

            <AcceptAndCancelButtons save-text="Guardar">
        </form>
    </section>
</template>

<script>
  // Código Javascript
</script>

<style scoped>
  /* Código CSS */
</style>
