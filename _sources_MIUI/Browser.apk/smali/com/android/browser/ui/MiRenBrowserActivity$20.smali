.class Lcom/android/browser/ui/MiRenBrowserActivity$20;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->showPageInfo(Lcom/android/browser/controller/Tab;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$fromShowSSLCertificateOnError:Z


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-boolean p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->val$fromShowSSLCertificateOnError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 2501
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1202(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2502
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #setter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoView:Lcom/android/browser/controller/Tab;
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1302(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;

    .line 2505
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->val$fromShowSSLCertificateOnError:Z

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;
    invoke-static {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1400(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;
    invoke-static {v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/webkit/SslErrorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity$20;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;
    invoke-static {v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$1600(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/net/http/SslError;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificateOnError(Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 2512
    :cond_0
    return-void
.end method
