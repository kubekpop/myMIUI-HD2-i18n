.class Lcom/android/browser/ui/MiRenWebViewCore$5$1;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$5;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 1554
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    #getter for: Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenWebViewCore$5;->access$700(Lcom/android/browser/ui/MiRenWebViewCore$5;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    #getter for: Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenWebViewCore$5;->access$700(Lcom/android/browser/ui/MiRenWebViewCore$5;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1556
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    #setter for: Lcom/android/browser/ui/MiRenWebViewCore$5;->mResend:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore$5;->access$802(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/os/Message;)Landroid/os/Message;

    .line 1557
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5$1;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$5;

    #setter for: Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore$5;->access$702(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/os/Message;)Landroid/os/Message;

    .line 1559
    :cond_0
    return-void
.end method
