.class Lcom/android/systemui/statusbar/DateView$1;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DateView;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/DateView$1;->this$0:Lcom/android/systemui/statusbar/DateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView$1;->this$0:Lcom/android/systemui/statusbar/DateView;

    #calls: Lcom/android/systemui/statusbar/DateView;->updateClock()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/DateView;->access$000(Lcom/android/systemui/statusbar/DateView;)V

    .line 42
    :cond_1
    return-void
.end method
