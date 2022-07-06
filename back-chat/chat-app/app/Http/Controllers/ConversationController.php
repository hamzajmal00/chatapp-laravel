<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Conversation;
use App\Models\Message;
use App\Models\User;
use App\Events\FormSubmited;
use App\Events\MessageSent;
use Auth;

class ConversationController extends Controller
{
    //
    public function index(){
    
        $users = User::all()->where('id','!=', auth()->user()->id);
        return view('chatbox',compact('users'));
    }
    public function conservation($use_id){
        $user = User::findOrFail($use_id);
         $conversationtt = Conversation::firstOrCreate([
            'sender_id' => auth()->user()->id,
            'receiver_id' => $use_id
        ]);
        return view('userdetail',compact('conversationtt','user'));
    }
    public function AllConverse(){
        $conversations = Conversation::where('sender_id', auth()->id())
        ->orWhere('receiver_id', auth()->id())
        ->get();
        return view('allconversatoion', compact('conversations'));
    }
    public function chatView($id)
    {
 
        $conversation = Conversation::findOrFail($id);
        $message = Message::where('conversation_id',$id)->get();
        return view('chatboxsingle',compact('conversation','message'));
    }
    public function testSender(Request $request, $id)
    {
        $conversation = Conversation::findOrFail($id);
        $message = Message::create([
            'conversation_id' => $conversation->id,
            'user_id' => auth()->id(),
            'body' => $request->body
        ]);
        event(new MessageSent($message));
        // $text = $request->text;
        // event(new FormSubmited($text));
        return redirect()->back();
    }
    public function logout(Request $request) {
        Auth::logout();
        return redirect('/');
      }
}
