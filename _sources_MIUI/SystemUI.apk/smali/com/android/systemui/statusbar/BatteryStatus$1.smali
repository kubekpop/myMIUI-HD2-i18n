.class Lcom/android/systemui/statusbar/BatteryStatus$1;
.super Landroid/database/ContentObserver;
.source "BatteryStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BatteryStatus;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BatteryStatus;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BatteryStatus;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryStatus$1;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryStatus$1;->this$0:Lcom/android/systemui/statusbar/BatteryStatus;

    #calls: Lcom/android/systemui/statusbar/BatteryStatus;->updateBatterySettings()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/BatteryStatus;->access$000(Lcom/android/systemui/statusbar/BatteryStatus;)V

    .line 51
    return-void
.end method
