.class final enum Lcom/android/phone/CallWaitingCheckBoxPreference$State;
.super Ljava/lang/Enum;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallWaitingCheckBoxPreference$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallWaitingCheckBoxPreference$State;

.field public static final enum Getting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

.field public static final enum Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

.field public static final enum Setting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 23
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    const-string v1, "Getting"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Getting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 24
    new-instance v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    const-string v1, "Setting"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallWaitingCheckBoxPreference$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Setting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Idle:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Getting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->Setting:Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->$VALUES:[Lcom/android/phone/CallWaitingCheckBoxPreference$State;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallWaitingCheckBoxPreference$State;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/CallWaitingCheckBoxPreference$State;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/phone/CallWaitingCheckBoxPreference$State;->$VALUES:[Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    invoke-virtual {v0}, [Lcom/android/phone/CallWaitingCheckBoxPreference$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallWaitingCheckBoxPreference$State;

    return-object v0
.end method
