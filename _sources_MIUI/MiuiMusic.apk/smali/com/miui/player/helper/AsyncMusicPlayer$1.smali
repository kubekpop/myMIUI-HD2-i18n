.class Lcom/miui/player/helper/AsyncMusicPlayer$1;
.super Landroid/os/Handler;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/AsyncMusicPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 401
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 424
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undefined msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :pswitch_0
    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1000(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;

    .line 405
    .local v0, errMsg:Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;
    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1000(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v3

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->mp:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->access$1100(Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;)Landroid/media/MediaPlayer;

    move-result-object v4

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->what:I
    invoke-static {v0}, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->access$1200(Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;)I

    move-result v5

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->extra:I
    invoke-static {v0}, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->access$1300(Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;)I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 426
    .end local v0           #errMsg:Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 409
    .restart local p0
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1400(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 410
    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1400(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v3

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/media/MediaPlayer;

    invoke-interface {v3, p0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 414
    .restart local p0
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;

    .line 415
    .local v1, objFailed:Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;
    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;
    invoke-static {v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;->path:Ljava/lang/String;

    iget-object v5, v1, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;->extra:Ljava/lang/Object;

    iget-object v6, v1, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;->exception:Ljava/lang/Exception;

    invoke-interface {v3, v4, v5, v6}, Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;->onPrepareFailed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 420
    .end local v1           #objFailed:Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;

    .line 421
    .local v2, objSuc:Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;
    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$1;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;
    invoke-static {v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;

    move-result-object v3

    iget-object v4, v2, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;->path:Ljava/lang/String;

    iget-object v5, v2, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;->extra:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;->onPrepareSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
