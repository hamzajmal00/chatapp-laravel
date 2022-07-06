<html>
<head>
    <title>Pusher Test</title>
    

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="{{ asset('assets/style.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  </head>
  <body id="#chatsddcro">
<div class="container">
    <div class="row clearfix">
        <div class="col-lg-12">
            <div class="card chat-app">
                <div id="plist" class="people-list">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-search"></i></span>
                        </div>
                        <input type="text" class="form-control" placeholder="Search...">
                    </div>
                    <ul class="list-unstyled chat-list mt-2 mb-0">
                       
                            
                        
                        <li class="clearfix active">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avatar">
                            <div class="about">
                                <div class="name">
                                    @if ($conversation->sender_id === auth()->id())
                                    {{ $conversation->receiver->name }}
                                @else
                                    {{ $conversation->sender->name }}
                                @endif
                                </div>
                                <div class="status">  {{ $conversation->messages->last()?->body }} </div>                                            
                            </div>
                        </li>
                     
 
                    </ul>
                </div>
                <div class="chat">
                    <div class="chat-header clearfix">
                        <div class="row">
                            <div class="col-lg-6">
                                <a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="avatar">
                                </a>
                                <div class="chat-about">
                                    <h6 class="m-b-0"> 
                                    @if ($conversation->sender_id === auth()->id())
                                        {{ $conversation->receiver->name }}
                                    @else
                                        {{ $conversation->sender->name }}
                                    @endif</h6>
                                    <small>Active <i class="fa fa-circle online"></i></small>
                                </div>
                            </div>
                            <div class="col-lg-6 hidden-sm text-right">
                                <a href="javascript:void(0);" class="btn btn-outline-secondary"><i class="fa fa-camera"></i></a>
                                <a href="javascript:void(0);" class="btn btn-outline-primary"><i class="fa fa-image"></i></a>
                                <a href="javascript:void(0);" class="btn btn-outline-info"><i class="fa fa-cogs"></i></a>
                                <a href="javascript:void(0);" class="btn btn-outline-warning"><i class="fa fa-question"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="chat-history" style="overflow: auto; height:500px;" id="chatscro">
                        <ul id="singletest" class="m-b-0">
                            @foreach ($conversation->messages as $message)
                            
                                
                            @if($message->user_id === auth()->id())
                                <li class="clearfix {{ $message->user_id === auth()->id()? "text-right" : " " }}">
                                    <div class="message-data ">
                                        <span class="message-data-time">{{ $message->created_at->format('d M h:i a') }}</span>
                                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                                    </div>
                                    <div class="message other-message "> {{ $message->body }} </div>
                                </li>
                            @else
                                <li class="clearfix">
                                    <div class="message-data">
                                        <span class="message-data-time">{{ $message->created_at->format('d M h:i a') }}</span>
                                    </div>
                                    <div  class="message my-message">{{ $message->body }}</div>                                    
                                </li> 
                            
                            @endif


                            @endforeach

                        </ul>
                    </div>
                    <div class="chat-message clearfix">
                        {{-- <form>
                            @csrf --}}
                            <div class="input-group mb-0">
                                <div class="input-group-prepend">
                                    <button id="myBtn" class="input-group-text"><i class="fa fa-send"></i></button>
                                </div>
                                <input type="text" name='body' id="body" class="form-control" placeholder="Enter text here...">
                                <input type="hidden" name='conserv_id' id="conserv_id" class="form-control" value="{{ $conversation->id  }}">  
                                                 
                            </div>
                    {{-- </form> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>


    
<script src="https://js.pusher.com/7.1/pusher.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"
integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ=="
crossorigin="anonymous"
referrerpolicy="no-referrer"
></script>
<script>
    $('#chatscro').animate({scrollTop:1000000},800);

  // Enable pusher logging - don't include this in production
  Pusher.logToConsole = true;

  var pusher = new Pusher('197486b89918db53ceb7', {
    cluster: 'eu'
  });
  var channel = pusher.subscribe('chat');

  var channel = pusher.subscribe('chat');
    channel.bind('chat-event', function(data) {
     
     var date = moment();
    var row_class = '';
    var message_class = '';
    var msg_date = date.format("DD/MM/YYYY");
    var msg_body = data.message.body
    if(data.message.user_id === {{ auth()->id() }}){
        row_class = 'text-right';
        message_class = 'other-message';
    }else{
        
        message_class = 'my-message';
    }



    //   if({{ $message  }} === null){
        var msg_data = '<li class="clearfix '+row_class+'">';
            msg_data+='<div class="message-data">';
            msg_data+='<span class="message-data-time">' +msg_date+'</span>';
            msg_data+='</div>';
            msg_data+='<div id="singletest" class="message '+message_class+'">'+msg_body+'</div> </li>';
            
                                       
    

      
      $('#singletest').append(msg_data);
    // }else{
    //     $('#singletest').append(`please write a message`)
    // }
    });

  channel.bind('pusher:subscription_succeeded"', function(memebers) {
      alert('successfully subscribed!');
  });



  // var channel = pusher.subscribe('my-channel');

  // channel.bind('pusher:subscription_succeeded"', function(memebers) {
  //     alert('successfully subscribed!');
  // });

  // channel.bind('my-event', function(data) {
  // //   var all = JSON.stringify(data);
  // //   var allData = JSON.parse(all);
  //     var allData = data;
  //   $("#testData").text(allData.text)
  // // alert(allData.text)
  // // $("#message").append("<li>fdfdfdf</li>");

  // });
  // // $("#btn2").click(function(){
  // //  $("#message").append("<li>Appended item</li>");
  // // });

/////////////////////////////////////////////////////////////////////////////////////////////////////////
      // $.ajaxSetup({
      //   headers:{
      //       'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
      //   }
      // })
  

      // function addMessage(){
        $("#myBtn").click(function(){
      
        var body = $('#body').val();
        var id = $('#conserv_id').val();
        $.ajax({
        type: "POST",
        dataType: 'json',
        headers:{
            'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
        },
        data:{
          body:body
        },
        url:"/cendrr/"+id,
        success:function(data){
          
         
        }
        });
        $('#body').val('');
     
    });
  // }


    $('#body').keyup(function(e){
    if(e.keyCode == 13){
        //entered is clicked
        // alert('Entered button clicked inside input');
        
        var body = $('#body').val();
        var id = $('#conserv_id').val();
        $.ajax({
        type: "POST",
        dataType: 'json',
        headers:{
            'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
        },
        data:{
          body:body
        },
        url:"/cendrr/"+id,
        success:function(data){
          
          
        }
        });
        $('#body').val('');
    }
})
  


function conservationView(id){
    $.ajax({
        type: 'GET',
        url: '/chat/view/'+id,
        dataType:'json',
        success:function(data){

        }
    })
    
}


</script>
</body>
</html>