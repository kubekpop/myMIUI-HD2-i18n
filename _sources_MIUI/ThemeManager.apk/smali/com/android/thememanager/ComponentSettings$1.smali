.class Lcom/android/thememanager/ComponentSettings$1;
.super Ljava/lang/Object;
.source "ComponentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/thememanager/ComponentSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/thememanager/ComponentSettings;


# direct methods
.method constructor <init>(Lcom/android/thememanager/ComponentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/thememanager/ComponentSettings$1;->this$0:Lcom/android/thememanager/ComponentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/thememanager/ComponentSettings$1;->this$0:Lcom/android/thememanager/ComponentSettings;

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->backupCurrentTheme(Landroid/content/Context;)V

    .line 59
    return-void
.end method
