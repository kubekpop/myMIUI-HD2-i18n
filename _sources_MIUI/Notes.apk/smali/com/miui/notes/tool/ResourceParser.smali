.class public Lcom/miui/notes/tool/ResourceParser;
.super Ljava/lang/Object;
.source "ResourceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/tool/ResourceParser$TextAppearanceResources;,
        Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;,
        Lcom/miui/notes/tool/ResourceParser$NoteItemBgResources;,
        Lcom/miui/notes/tool/ResourceParser$NoteBgResources;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method public static getDefaultBgId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_bg_random_appear"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lcom/miui/notes/tool/ResourceParser$NoteBgResources;->access$000()[I

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 56
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
