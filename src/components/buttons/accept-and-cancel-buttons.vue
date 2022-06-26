<div class="component accept-and-cancel-buttons">
    <div class="button-group {{ $xtraClassName ?? 'right-content' }}">
        <button class="btn btn-default small-button" type="button" data-action="cancel">
            Cancelar
        </button>
        <button  class="btn btn-primary small-button" type="submit">
            {{ $saveText ?? 'Guardar' }}
        </button>
    </div>
</div>

<script>
    export default {
        name: AcceptAndCancelButtons,
        props: {
            saveText: String,
            xtraClassName: String,
        }
    }
</script>
