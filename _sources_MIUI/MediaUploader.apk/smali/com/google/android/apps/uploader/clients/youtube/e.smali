.class final Lcom/google/android/apps/uploader/clients/youtube/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/e;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/e;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/e;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
