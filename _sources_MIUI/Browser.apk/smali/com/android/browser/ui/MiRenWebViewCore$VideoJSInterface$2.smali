.class Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;
.super Ljava/lang/Object;
.source "MiRenWebViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->doNavigate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

.field final synthetic val$abUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iput-object p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;->val$abUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;->this$1:Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface$2;->val$abUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;)V

    .line 1957
    return-void
.end method
