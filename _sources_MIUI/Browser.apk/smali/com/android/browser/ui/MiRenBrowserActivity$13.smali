.class Lcom/android/browser/ui/MiRenBrowserActivity$13;
.super Ljava/lang/Object;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/MiRenBrowserActivity;->registerNavButtonEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity$13;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity$13;->this$0:Lcom/android/browser/ui/MiRenBrowserActivity;

    #getter for: Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;
    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->goHome()V

    .line 1343
    return-void
.end method
