.class Lcom/android/gallery/ui/NormalSingleViewInteraction$1;
.super Ljava/lang/Object;
.source "NormalSingleViewInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/NormalSingleViewInteraction;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/NormalSingleViewInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$1;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery/ui/NormalSingleViewInteraction$1;->this$0:Lcom/android/gallery/ui/NormalSingleViewInteraction;

    #calls: Lcom/android/gallery/ui/NormalSingleViewInteraction;->savePic()V
    invoke-static {v0}, Lcom/android/gallery/ui/NormalSingleViewInteraction;->access$000(Lcom/android/gallery/ui/NormalSingleViewInteraction;)V

    .line 126
    return-void
.end method
