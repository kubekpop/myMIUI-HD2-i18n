.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricModifyCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1620
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x1

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode(Z)V
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2300(Lcom/miui/player/ui/MediaPlaybackActivity;Z)V

    .line 1625
    return-void
.end method
