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
                <h3 class="panel-title">User List</h3>
            </div>
            <div class="panel-body">
				<div class="table-container">
                    <a href="{{ route('all.convers') }}" class="btn btn-primary float-right">All Messages</a>
                    <a href="{{ url('/logout') }}" class="btn btn-danger float-right">Logout</a>
                    <table class="table-users table" border="0">
                        <tbody>
                            @foreach( $users as $user )
                            {{-- @php
                                print_r($user);die();
                            @endphp --}}
                            <tr>
                                <td width="10" align="center">
                                    <i class="fa fa-2x fa-user fw"></i>
                                </td>
                                <td>
                                     {{  $user->name }}
                                </td>
                                <td>
                                    {{-- {{ url('/chat/view/conversation/'.$conversation->id.'/user'.$user->id) }} --}}
                                    <a href="{{ url('/detail/'.$user->id) }}"><i class="fa fa-envelope">View Detail</i></a>
                                </td>
                                <td align="center">
                                    <input type="hidden" name="reciever_id" value="{{ $user->id }}">
                                     6/14/2017<br>
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