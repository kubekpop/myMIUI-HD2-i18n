.class public final Lcom/miui/milk/model/ContactProtos$Email;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Email$Builder;,
        Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Email;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1751
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Email;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Email;

    .line 1752
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Email;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Email;->initFields()V

    .line 1753
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Email$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1252
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1395
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->memoizedIsInitialized:B

    .line 1418
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->memoizedSerializedSize:I

    .line 1253
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Email$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Email;-><init>(Lcom/miui/milk/model/ContactProtos$Email$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1395
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->memoizedIsInitialized:B

    .line 1418
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->memoizedSerializedSize:I

    .line 1254
    return-void
.end method

.method static synthetic access$1802(Lcom/miui/milk/model/ContactProtos$Email;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/miui/milk/model/ContactProtos$Email;Lcom/miui/milk/model/ContactProtos$Email$EmailType;)Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Email;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/miui/milk/model/ContactProtos$Email;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/miui/milk/model/ContactProtos$Email;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1247
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Email;
    .locals 1

    .prologue
    .line 1258
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Email;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;

    .line 1380
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1381
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1383
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 1386
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;

    .line 1338
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1339
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1341
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 1344
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 1391
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;

    .line 1392
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->OTHER:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1393
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;

    .line 1394
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1

    .prologue
    .line 1512
    #calls: Lcom/miui/milk/model/ContactProtos$Email$Builder;->create()Lcom/miui/milk/model/ContactProtos$Email$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->access$1600()Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1365
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;

    .line 1366
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1367
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1375
    :goto_0
    return-object v4

    .line 1369
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1371
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1372
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1373
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 1375
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1420
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->memoizedSerializedSize:I

    .line 1421
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1437
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 1423
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 1424
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1425
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Email;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1428
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1429
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Email;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1432
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1433
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Email;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1436
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->memoizedSerializedSize:I

    move v1, v0

    .line 1437
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1323
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;

    .line 1324
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1325
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 1333
    :goto_0
    return-object v4

    .line 1327
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 1329
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1331
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 1333
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 1362
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 1352
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1320
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1406
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Email;->getSerializedSize()I

    .line 1407
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1408
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Email;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1410
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1413
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1414
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Email;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1416
    :cond_2
    return-void
.end method
