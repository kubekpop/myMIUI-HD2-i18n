.class Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;
.super Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;
.source "LockscreenConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/LockscreenConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringChoiceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/LockscreenConfigSettings;


# direct methods
.method private constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/thememanager/LockscreenConfigSettings;Lcom/android/thememanager/LockscreenConfigSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;-><init>(Lcom/android/thememanager/LockscreenConfigSettings;)V

    return-void
.end method


# virtual methods
.method public OnValueChange(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objValue"

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/android/thememanager/LockscreenConfigSettings$ValueChoiceItem;->OnValueChange(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/android/thememanager/LockscreenConfigSettings$StringChoiceItem;->this$0:Lcom/android/thememanager/LockscreenConfigSettings;

    #getter for: Lcom/android/thememanager/LockscreenConfigSettings;->mSavedConfig:Lcom/miui/android/screenelement/LockscreenConfigFile;
    invoke-static {v0}, Lcom/android/thememanager/LockscreenConfigSettings;->access$1000(Lcom/android/thememanager/LockscreenConfigSettings;)Lcom/miui/android/screenelement/LockscreenConfigFile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/thememanager/LockscreenConfigSettings$Item;->mId:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, v1, p1}, Lcom/miui/android/screenelement/LockscreenConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x1

    return v0
.end method
