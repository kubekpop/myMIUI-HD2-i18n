.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field final synthetic val$newThread:Ljava/lang/String;

.field final synthetic val$paging:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;->val$paging:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;->val$newThread:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;->val$paging:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;->val$newThread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/ForumDataDetectorShell;->addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method
