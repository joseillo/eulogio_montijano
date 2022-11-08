{{-- Mediante un for recorremos todos los clientes --}}
@if ($fitosanitarios->count() > 0)
<table>
    <tr>
        <th>Id |</th>
        <th>referencia |</th>
        <th>Nombre |</th>
        <th>Composicion |</th>
        <th>tipo de producto |</th>
        <th>cantidad |</th>
        <th>medidas |</th>
        <th>entrada |</th>
        <th>salida |</th>
        <th>caducidad |</th>
        <th>activo |</th>
        <th>almacen_origen |</th>
        <th>imagen |</th>
        <th>usuario |</th>
        <th>empresa |</th>
        <th>creacion |</th>
        <th>actualizacion |</th>
        <th width="280px">Acciones</th>
    </tr>
    @foreach ($fitosanitarios as $fito)
        <tr>
            <td>{{ $fito->id }}</td>
            <td>{{ $fito->ref_producto }}</td>
            <td>{{ $fito->nombre }}</td>
            <td>{{ $fito->composicion }}</td>
            <td>{{ $fito->tipo_producto }}</td>
            <td>{{ $fito->cantidad }}</td>
            <td>{{ $fito->medidas }}</td>
            <td>{{ $fito->entrada }}</td>
            <td>{{ $fito->salida }}</td>
            <td>{{ $fito->caducidad }}</td>
            <td>{{ $fito->activo }}</td>
            <td>{{ $fito->almacen_origen }}</td>
            <td>{{ $fito->imagen }}</td>
            <td>{{ $fito->cod_usuario }}</td>
            <td>{{ $fito->cod_empresa }}</td>
            <td>{{ $fito->created_at 	 }}</td>
            <td>{{ $fito->updated_at }}</td>
            <td>
                {{-- Formulario para ver, editar o eliminar un fito --}}
                <form action="{{ route('fitos.destroy', $fito->id) }}" method="POST">

                    <a href="{{ route('fitos.show', $fito->id) }}" class="btn-ver-todo" title="Informacion"></a>

                    <a href="{{ route('fitos.edit', $fito->id) }}" class="btn-actualizar" title="Actualizar"></a>

                    @csrf
                    @method('DELETE')
                    {{-- El boton del formulario pregunta antes de eliminar --}}

                        <button type="submit"
                            onclick="if (!confirm('Eliminar registro con ID: '+{{ $fito->id }})) { return false }" class="btn-eliminar" title="Eliminar"></button>
                </form>
            </td>
        </tr>
    @endforeach
</table>
@else
<h2>No hay registros</h2>
@endif
