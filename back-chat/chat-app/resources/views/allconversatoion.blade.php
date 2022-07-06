@extends('master')
@section('content')
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="https://use.fontawesome.com/1e803d693b.js"></script>

<div class="container">
	<div class="row">
        <div class="panel panel-default user_panel">
            <div class="panel-heading">
                <h3 class="panel-title">Message List</h3>
            </div>
            <div class="panel-body">
				<div class="table-container">
                    <table class="table-users table" border="0">
                        <tbody>
                            @foreach( $conversations as $conversation )
                            {{-- @php
                                print_r($user);die();
                            @endphp --}}
                            <tr>
                                <td width="10" align="center">
                                    <i class="fa fa-2x fa-user fw"></i>
                                </td>
                                <td>
                                @if ($conversation->sender_id === auth()->id())
                                    {{ $conversation->receiver->name }}
                                @else
                                    {{ $conversation->sender->name }}
                                @endif
                                </td>
                                <td>
                                    {{-- {{ url('/chat/view/conversation/'.$conversation->id.'/user'.$user->id) }} --}}
                                    <a href="{{ url('/chat/view/'.$conversation->id) }}">{{ $conversation->messages->last()?->body }}</a>
                                </td>
                                <td align="center">
 
                                     {{ $conversation->messages->last()?->created_at->format('d/m/Y') }}<br>    
                                </td>
                            </tr>
                            @endforeach
                  
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

	</div>
</div>
@endsection