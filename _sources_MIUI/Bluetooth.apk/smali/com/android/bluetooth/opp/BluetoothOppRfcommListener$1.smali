.class Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;
.super Ljava/lang/Thread;
.source "BluetoothOppRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const-string v10, "BtOppRfcommListener"

    .line 118
    const/4 v5, 0x1

    .line 124
    .local v5, serverOK:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v7, 0xa

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 126
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v8

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$102(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    if-nez v5, :cond_0

    .line 133
    monitor-enter p0

    .line 136
    const-wide/16 v7, 0xbb8

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 129
    .local v2, e1:Ljava/io/IOException;
    const-string v7, "BtOppRfcommListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error create RfcommServerSocket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, 0x0

    goto :goto_1

    .line 137
    .end local v2           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v7, "BtOppRfcommListener"

    const-string v8, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v8, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    goto :goto_2

    .line 141
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 146
    :cond_0
    if-nez v5, :cond_1

    .line 147
    const-string v7, "BtOppRfcommListener"

    const-string v7, "Error start listening after 10 try"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7, v11}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    .line 150
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 151
    const-string v7, "BtOppRfcommListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Accept thread started on channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 156
    :try_start_4
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$100(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 157
    .local v0, clientSocket:Landroid/bluetooth/BluetoothSocket;
    const-string v7, "BtOppRfcommListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Accepted connectoin from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v6, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-direct {v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 161
    .local v6, transport:Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 162
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$400(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 163
    const/16 v7, 0x64

    iput v7, v4, Landroid/os/Message;->what:I

    .line 164
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 166
    .end local v0           #clientSocket:Landroid/bluetooth/BluetoothSocket;
    .end local v4           #msg:Landroid/os/Message;
    .end local v6           #transport:Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 167
    .local v1, e:Ljava/io/IOException;
    const-string v7, "BtOppRfcommListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error accept connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 170
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    const-string v7, "BtOppRfcommListener"

    const-string v7, "BluetoothSocket listen thread finished"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
