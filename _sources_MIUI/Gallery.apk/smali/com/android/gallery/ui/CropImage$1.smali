.class Lcom/android/gallery/ui/CropImage$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage$1;->this$0:Lcom/android/gallery/ui/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$1;->this$0:Lcom/android/gallery/ui/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery/ui/CropImage;->setResult(I)V

    .line 199
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$1;->this$0:Lcom/android/gallery/ui/CropImage;

    invoke-virtual {v0}, Lcom/android/gallery/ui/CropImage;->finish()V

    .line 200
    return-void
.end method
