.class final Lcom/miui/player/helper/LyricDownloader$2;
.super Ljava/lang/Object;
.source "LyricDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/LyricDownloader;->download(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

.field final synthetic val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

.field final synthetic val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;


# direct methods
.method constructor <init>(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    iput-object p2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    iput-object p3, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    iget-object v3, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-interface {v2, v3}, Lcom/miui/player/plugin/onlinelyric/LyricProvider;->requestItem(Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v0, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    iget-object v3, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$provider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    invoke-virtual {v2, v3, v0}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->setLyricItemInfo(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    const/4 v1, 0x1

    .line 105
    .end local v0           #infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->run()V

    .line 106
    invoke-static {v1}, Lcom/miui/player/helper/LyricDownloader;->statistics(Z)V

    .line 108
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    .line 105
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->run()V

    .line 106
    invoke-static {v1}, Lcom/miui/player/helper/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v2

    .line 105
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->run()V

    .line 106
    invoke-static {v1}, Lcom/miui/player/helper/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 103
    :catch_2
    move-exception v2

    .line 105
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->run()V

    .line 106
    invoke-static {v1}, Lcom/miui/player/helper/LyricDownloader;->statistics(Z)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/miui/player/helper/LyricDownloader$2;->val$callback:Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;

    invoke-virtual {v3}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->run()V

    .line 106
    invoke-static {v1}, Lcom/miui/player/helper/LyricDownloader;->statistics(Z)V

    throw v2
.end method
