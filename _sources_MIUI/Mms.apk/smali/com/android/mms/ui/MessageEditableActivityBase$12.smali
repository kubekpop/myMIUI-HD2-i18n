.class Lcom/android/mms/ui/MessageEditableActivityBase$12;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->onPreMessageSent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$12;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$12;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->resetMessageWithAnimation()V

    .line 683
    return-void
.end method
