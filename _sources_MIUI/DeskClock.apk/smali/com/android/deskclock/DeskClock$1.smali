.class Lcom/android/deskclock/DeskClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.deskclock.MIDNIGHT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    #calls: Lcom/android/deskclock/DeskClock;->refreshDate()V
    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$000(Lcom/android/deskclock/DeskClock;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "level"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #calls: Lcom/android/deskclock/DeskClock;->handleBatteryUpdate(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/deskclock/DeskClock;->access$100(Lcom/android/deskclock/DeskClock;III)V

    goto :goto_0

    .line 193
    :cond_3
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    #getter for: Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z
    invoke-static {v1}, Lcom/android/deskclock/DeskClock;->access$200(Lcom/android/deskclock/DeskClock;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1}, Lcom/android/deskclock/DeskClock;->finish()V

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$1;->this$0:Lcom/android/deskclock/DeskClock;

    #setter for: Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z
    invoke-static {v1, v5}, Lcom/android/deskclock/DeskClock;->access$202(Lcom/android/deskclock/DeskClock;Z)Z

    goto :goto_0
.end method
