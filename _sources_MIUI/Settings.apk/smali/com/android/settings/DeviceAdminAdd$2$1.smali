.class Lcom/android/settings/DeviceAdminAdd$2$1;
.super Landroid/os/RemoteCallback;
.source "DeviceAdminAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAdd$2;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd$2;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$2$1;->this$1:Lcom/android/settings/DeviceAdminAdd$2;

    invoke-direct {p0, p2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const-string v3, "android.app.extra.DISABLE_WARNING"

    .line 172
    if-eqz p1, :cond_0

    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    .line 176
    .local v1, msg:Ljava/lang/CharSequence;
    :goto_0
    if-nez v1, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$2$1;->this$1:Lcom/android/settings/DeviceAdminAdd$2;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$2$1;->this$1:Lcom/android/settings/DeviceAdminAdd$2;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 178
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$2$1;->this$1:Lcom/android/settings/DeviceAdminAdd$2;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 185
    :goto_1
    return-void

    .line 172
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0

    .line 180
    .restart local v1       #msg:Ljava/lang/CharSequence;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$2$1;->this$1:Lcom/android/settings/DeviceAdminAdd$2;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd$2;->this$0:Lcom/android/settings/DeviceAdminAdd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1
.end method
