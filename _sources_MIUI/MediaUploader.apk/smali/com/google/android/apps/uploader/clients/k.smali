.class final Lcom/google/android/apps/uploader/clients/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/widget/ImageView;

.field private synthetic b:Landroid/graphics/Bitmap;

.field private synthetic c:Lcom/google/android/apps/uploader/clients/g;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/g;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/k;->c:Lcom/google/android/apps/uploader/clients/g;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/k;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/k;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/k;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/k;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/k;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/k;->c:Lcom/google/android/apps/uploader/clients/g;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/g;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->d(Lcom/google/android/apps/uploader/clients/SettingsActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const v1, 0x7f020008

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void

    :cond_0
    const v1, 0x7f020009

    goto :goto_0
.end method
