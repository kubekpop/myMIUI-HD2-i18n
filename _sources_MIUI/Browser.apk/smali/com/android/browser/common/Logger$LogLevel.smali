.class public final enum Lcom/android/browser/common/Logger$LogLevel;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/common/Logger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/common/Logger$LogLevel;

.field public static final enum LOG_DEBUG:Lcom/android/browser/common/Logger$LogLevel;

.field public static final enum LOG_ERROR:Lcom/android/browser/common/Logger$LogLevel;

.field public static final enum LOG_INFO:Lcom/android/browser/common/Logger$LogLevel;

.field public static final enum LOG_VERBOSE:Lcom/android/browser/common/Logger$LogLevel;

.field public static final enum LOG_WARNING:Lcom/android/browser/common/Logger$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/android/browser/common/Logger$LogLevel;

    const-string v1, "LOG_DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/common/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/common/Logger$LogLevel;->LOG_DEBUG:Lcom/android/browser/common/Logger$LogLevel;

    .line 7
    new-instance v0, Lcom/android/browser/common/Logger$LogLevel;

    const-string v1, "LOG_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/common/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/common/Logger$LogLevel;->LOG_ERROR:Lcom/android/browser/common/Logger$LogLevel;

    .line 8
    new-instance v0, Lcom/android/browser/common/Logger$LogLevel;

    const-string v1, "LOG_INFO"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/common/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/common/Logger$LogLevel;->LOG_INFO:Lcom/android/browser/common/Logger$LogLevel;

    .line 9
    new-instance v0, Lcom/android/browser/common/Logger$LogLevel;

    const-string v1, "LOG_VERBOSE"

    invoke-direct {v0, v1, v5}, Lcom/android/browser/common/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/common/Logger$LogLevel;->LOG_VERBOSE:Lcom/android/browser/common/Logger$LogLevel;

    .line 10
    new-instance v0, Lcom/android/browser/common/Logger$LogLevel;

    const-string v1, "LOG_WARNING"

    invoke-direct {v0, v1, v6}, Lcom/android/browser/common/Logger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/common/Logger$LogLevel;->LOG_WARNING:Lcom/android/browser/common/Logger$LogLevel;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/browser/common/Logger$LogLevel;

    sget-object v1, Lcom/android/browser/common/Logger$LogLevel;->LOG_DEBUG:Lcom/android/browser/common/Logger$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/common/Logger$LogLevel;->LOG_ERROR:Lcom/android/browser/common/Logger$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/common/Logger$LogLevel;->LOG_INFO:Lcom/android/browser/common/Logger$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/browser/common/Logger$LogLevel;->LOG_VERBOSE:Lcom/android/browser/common/Logger$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/browser/common/Logger$LogLevel;->LOG_WARNING:Lcom/android/browser/common/Logger$LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/common/Logger$LogLevel;->$VALUES:[Lcom/android/browser/common/Logger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/common/Logger$LogLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lcom/android/browser/common/Logger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/common/Logger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/common/Logger$LogLevel;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/browser/common/Logger$LogLevel;->$VALUES:[Lcom/android/browser/common/Logger$LogLevel;

    invoke-virtual {v0}, [Lcom/android/browser/common/Logger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/common/Logger$LogLevel;

    return-object v0
.end method
