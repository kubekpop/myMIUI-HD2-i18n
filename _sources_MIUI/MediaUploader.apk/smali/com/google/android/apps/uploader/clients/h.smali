.class final Lcom/google/android/apps/uploader/clients/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/h;->a:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    return-void
.end method
