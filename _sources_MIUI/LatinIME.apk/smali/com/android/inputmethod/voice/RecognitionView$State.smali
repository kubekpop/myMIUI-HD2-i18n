.class final enum Lcom/android/inputmethod/voice/RecognitionView$State;
.super Ljava/lang/Enum;
.source "RecognitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/RecognitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/inputmethod/voice/RecognitionView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/inputmethod/voice/RecognitionView$State;

.field public static final enum LISTENING:Lcom/android/inputmethod/voice/RecognitionView$State;

.field public static final enum READY:Lcom/android/inputmethod/voice/RecognitionView$State;

.field public static final enum WORKING:Lcom/android/inputmethod/voice/RecognitionView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView$State;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/voice/RecognitionView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/voice/RecognitionView$State;->LISTENING:Lcom/android/inputmethod/voice/RecognitionView$State;

    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView$State;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v3}, Lcom/android/inputmethod/voice/RecognitionView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/voice/RecognitionView$State;->WORKING:Lcom/android/inputmethod/voice/RecognitionView$State;

    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/android/inputmethod/voice/RecognitionView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/inputmethod/voice/RecognitionView$State;->READY:Lcom/android/inputmethod/voice/RecognitionView$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/inputmethod/voice/RecognitionView$State;

    sget-object v1, Lcom/android/inputmethod/voice/RecognitionView$State;->LISTENING:Lcom/android/inputmethod/voice/RecognitionView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/inputmethod/voice/RecognitionView$State;->WORKING:Lcom/android/inputmethod/voice/RecognitionView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/inputmethod/voice/RecognitionView$State;->READY:Lcom/android/inputmethod/voice/RecognitionView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/inputmethod/voice/RecognitionView$State;->$VALUES:[Lcom/android/inputmethod/voice/RecognitionView$State;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/inputmethod/voice/RecognitionView$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    const-class v0, Lcom/android/inputmethod/voice/RecognitionView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/voice/RecognitionView$State;

    return-object p0
.end method

.method public static values()[Lcom/android/inputmethod/voice/RecognitionView$State;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/inputmethod/voice/RecognitionView$State;->$VALUES:[Lcom/android/inputmethod/voice/RecognitionView$State;

    invoke-virtual {v0}, [Lcom/android/inputmethod/voice/RecognitionView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/voice/RecognitionView$State;

    return-object v0
.end method
