.class public interface abstract Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;
.super Ljava/lang/Object;
.source "PlayerStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/PlayerStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiuiPlaylistsAudioMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap$Columns;
    }
.end annotation


# static fields
.field public static final EXTERNAL_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "playlists_audio_map"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "playlists_audio_map"

    invoke-static {v0}, Lcom/miui/player/provider/PlayerStore;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    return-void
.end method
