.class Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$1;
.super Ljava/lang/Object;
.source "AccountExpiredAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity$1;->this$0:Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/AccountExpiredAlertActivity;->finish()V

    .line 74
    return-void
.end method
