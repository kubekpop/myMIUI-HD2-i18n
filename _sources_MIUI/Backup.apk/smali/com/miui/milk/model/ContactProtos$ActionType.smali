.class public final enum Lcom/miui/milk/model/ContactProtos$ActionType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$ActionType;

.field public static final enum DELETE:Lcom/miui/milk/model/ContactProtos$ActionType;

.field public static final enum NEW:Lcom/miui/milk/model/ContactProtos$ActionType;

.field public static final enum UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

.field public static final enum UPDATE:Lcom/miui/milk/model/ContactProtos$ActionType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/miui/milk/model/ContactProtos$ActionType;

    const-string v1, "UNDEFINE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/ContactProtos$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 14
    new-instance v0, Lcom/miui/milk/model/ContactProtos$ActionType;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/ContactProtos$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->NEW:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 15
    new-instance v0, Lcom/miui/milk/model/ContactProtos$ActionType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/ContactProtos$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UPDATE:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 16
    new-instance v0, Lcom/miui/milk/model/ContactProtos$ActionType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->DELETE:Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$ActionType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/ContactProtos$ActionType;->NEW:Lcom/miui/milk/model/ContactProtos$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/ContactProtos$ActionType;->UPDATE:Lcom/miui/milk/model/ContactProtos$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/ContactProtos$ActionType;->DELETE:Lcom/miui/milk/model/ContactProtos$ActionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$ActionType;

    .line 42
    new-instance v0, Lcom/miui/milk/model/ContactProtos$ActionType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$ActionType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$ActionType;->value:I

    .line 53
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 1
    .parameter "value"

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 33
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UNDEFINE:Lcom/miui/milk/model/ContactProtos$ActionType;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->NEW:Lcom/miui/milk/model/ContactProtos$ActionType;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->UPDATE:Lcom/miui/milk/model/ContactProtos$ActionType;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->DELETE:Lcom/miui/milk/model/ContactProtos$ActionType;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/miui/milk/model/ContactProtos$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$ActionType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/miui/milk/model/ContactProtos$ActionType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$ActionType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$ActionType;->value:I

    return v0
.end method
