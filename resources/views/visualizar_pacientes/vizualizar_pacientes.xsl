<div class="col-12 bg-gradient-primary text-white d-flex py-2">

    <div class="px-2 align-self-center">
        <img src="{!! !empty($pet->fotos[0]) ? '/uploads/fotos/'.$pet->fotos[0]->file: '/images/patinha.png' !!}" class="img-fluid" width="{!! !empty($pet->fotos[0]) ? '150px': '80px' !!}">
    </div>

    <div class="px-2 align-self-center">
        <h3 class="font-weight-bold mb-0">{!! $pet->nome !!}</h3>
        <p class="mb-0">{!! $pet->raca !!}</p>
        <p class="mb-0">{!! $pet->especie !!} - {!! $pet->sexo !!}</p>
        <p class="mb-0">{!! $pet->idade !!}</p>
    </div>

    <div class="px-2 align-self-center ml-auto">
<!--        {!! Form::open(['route' => ['pets.destroy', $pet->id], 'method' => 'delete']) !!}-->
        <div class='btn-group'>
            <a href="{!! route('pets.edit', [$pet->id]) !!}" class='btn btn-secondary border-right-dark btn-xs'><i class="fas fa-edit"></i></a>
            {!! Form::button('<i class="fas fa-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Deseja realmente excluir?')"]) !!}
        </div>
        {!! Form::close() !!}
    </div>
</div>


<div class="col-12 col-md-3 py-3">
<div class="col-12 bg-light py-2 text-center">
    <i class="fas fa-syringe fa-5x pb-2"></i>
    <h5>Vacinas do pet</h5>
    <a href="{!! route('vacinas.index_pet', [$pet->id]) !!}" class="card-link"></a>
</div>
</div>


<div class="col-12 col-md-3 py-3">
<div class="col-12 bg-light py-2 text-center">
    <i class="fas fa-calendar-alt fa-5x pb-2"></i>
    <h5>Consultas agendadas</h5>
    <a href="{!! route('eventos.index', [$pet->id]) !!}" class="card-link"></a>
</div>
</div>

</div>

