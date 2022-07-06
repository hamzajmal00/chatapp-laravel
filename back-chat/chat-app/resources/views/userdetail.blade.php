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
                    <table class="table-users table" border="0">
                        <tbody>
                           
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
                                    <a href="{{ url('/chat/view/'.$conversationtt->id) }}"><i class="fa fa-envelope">Message</i></a>
                                </td>
                                <td align="center">
                                    <input type="hidden" name="reciever_id" value="{{ $user->id }}">
                                    Last Login:  6/14/2017<br><small class="text-muted">2 days ago</small>
                                </td>
                            </tr>
                          
                  
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

	</div>
</div>
@endsection