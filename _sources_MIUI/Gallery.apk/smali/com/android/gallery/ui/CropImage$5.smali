.class Lcom/android/gallery/ui/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/CropImage;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage$5;->this$0:Lcom/android/gallery/ui/CropImage;

    iput-object p2, p0, Lcom/android/gallery/ui/CropImage$5;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage$5;->this$0:Lcom/android/gallery/ui/CropImage;

    iget-object v1, p0, Lcom/android/gallery/ui/CropImage$5;->val$b:Landroid/graphics/Bitmap;

    #calls: Lcom/android/gallery/ui/CropImage;->saveLockScreen(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/android/gallery/ui/CropImage;->access$500(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V

    .line 364
    return-void
.end method
