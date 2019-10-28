<!-- Nome Field -->
<div class="form-group col-sm-6">
    {!! Form::label('nome', 'Nome:') !!}
    {!! Form::text('nome', null, ['class' => 'form-control']) !!}
</div>

<!-- Data Field -->
<div class="form-group col-sm-6">
    {!! Form::label('data', 'Data:') !!}
    {!! Form::date('data', null, ['class' => 'form-control','id'=>'data']) !!}
</div>

@section('scripts')
    <script type="text/javascript">
        $('#data').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            useCurrent: false
        })
    </script>
@endsection

<!-- Hora Field -->
<div class="form-group col-sm-6">
    {!! Form::label('hora', 'Hora:') !!}
    {!! Form::date('hora', null, ['class' => 'form-control','id'=>'hora']) !!}
</div>

@section('scripts')
    <script type="text/javascript">
        $('#hora').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',
            useCurrent: false
        })
    </script>
@endsection

<!-- Pet Id Field -->
{{--<div class="form-group col-sm-6">--}}
{{--    {!! Form::label('pet_id', 'Pet Id:') !!}--}}
{{--    {!! Form::number('pet_id', null, ['class' => 'form-control']) !!}--}}
{{--</div>--}}

<input type="hidden" name="pet_id" value="{!! $pet->id !!}">

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Salvar', ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('medicacaos.index') !!}" class="btn btn-secondary">Cancelar</a>
</div>
