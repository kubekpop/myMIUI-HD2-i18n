.class Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;
.super Ljava/lang/Object;
.source "EqualizerActivity.java"

# interfaces
.implements Lcom/miui/player/ui/view/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/EqualizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeAdjustListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/EqualizerActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/EqualizerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/EqualizerActivity;Lcom/miui/player/ui/EqualizerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;-><init>(Lcom/miui/player/ui/EqualizerActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/miui/player/ui/view/VerticalSeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x3

    .line 354
    if-eqz p3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/EqualizerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 356
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 357
    .local v1, maxVolume:I
    mul-int v3, p2, v1

    div-int/lit16 v2, v3, 0x3e8

    .line 358
    .local v2, newVolume:I
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 360
    .end local v0           #am:Landroid/media/AudioManager;
    .end local v1           #maxVolume:I
    .end local v2           #newVolume:I
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeAdjustBySeekBar:Z

    .line 365
    return-void
.end method

.method public onStopTrackingTouch(Lcom/miui/player/ui/view/VerticalSeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/miui/player/ui/EqualizerActivity$VolumeAdjustListener;->this$0:Lcom/miui/player/ui/EqualizerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/player/ui/EqualizerActivity;->mVolumeAdjustBySeekBar:Z

    .line 370
    return-void
.end method
