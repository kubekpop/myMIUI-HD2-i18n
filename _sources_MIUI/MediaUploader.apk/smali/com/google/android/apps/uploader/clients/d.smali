.class final Lcom/google/android/apps/uploader/clients/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/o;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/d;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/d;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaUploader"

    const-string v1, "Failed to add account"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/d;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->g(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/d;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/d;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->a(Lcom/google/android/apps/uploader/clients/SettingsActivity;[Ljava/lang/String;I)V

    return-void
.end method
