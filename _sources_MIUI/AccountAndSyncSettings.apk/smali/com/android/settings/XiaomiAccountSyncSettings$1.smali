.class Lcom/android/settings/XiaomiAccountSyncSettings$1;
.super Ljava/lang/Object;
.source "XiaomiAccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/XiaomiAccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/XiaomiAccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/XiaomiAccountSyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/XiaomiAccountSyncSettings$1;->this$0:Lcom/android/settings/XiaomiAccountSyncSettings;

    iget-object v1, v1, Lcom/android/settings/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    new-instance v2, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/XiaomiAccountSyncSettings$1$1;-><init>(Lcom/android/settings/XiaomiAccountSyncSettings$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 255
    return-void
.end method
