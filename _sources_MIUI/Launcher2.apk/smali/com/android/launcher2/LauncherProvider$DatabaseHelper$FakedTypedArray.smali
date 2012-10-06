.class Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakedTypedArray"
.end annotation


# instance fields
.field private mSet:Landroid/util/AttributeSet;

.field private mTypedArray:Landroid/content/res/TypedArray;

.field private mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Ljava/lang/Object;[I)V
    .locals 5
    .parameter
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->this$0:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    instance-of v2, p2, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_1

    .line 507
    #getter for: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$000(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v2

    check-cast p2, Landroid/util/AttributeSet;

    .end local p2
    invoke-virtual {v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    .line 545
    :cond_0
    return-void

    .line 509
    .restart local p2
    :cond_1
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    .line 510
    check-cast p2, Landroid/util/AttributeSet;

    .end local p2
    iput-object p2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, name:Ljava/lang/String;
    const-string v2, "launcher:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 514
    const-string v2, "className"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 511
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_3
    const-string v2, "packageName"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 518
    :cond_4
    const-string v2, "screen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 519
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 520
    :cond_5
    const-string v2, "container"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 521
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 522
    :cond_6
    const-string v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 523
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 524
    :cond_7
    const-string v2, "y"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 525
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 526
    :cond_8
    const-string v2, "spanX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 527
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 528
    :cond_9
    const-string v2, "spanY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 529
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 530
    :cond_a
    const-string v2, "icon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 531
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 532
    :cond_b
    const-string v2, "title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 533
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 534
    :cond_c
    const-string v2, "uri"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 535
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 536
    :cond_d
    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 537
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 538
    :cond_e
    const-string v2, "iconResource"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 539
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1

    .line 540
    :cond_f
    const-string v2, "retained"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mSet:Landroid/util/AttributeSet;

    invoke-interface {v4, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method getBoolean(IZ)Z
    .locals 2
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 566
    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method getInt(II)I
    .locals 2
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 559
    :goto_0
    return v1

    .line 557
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 558
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .line 559
    goto :goto_0
.end method

.method getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper$FakedTypedArray;->mTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 572
    :cond_0
    return-void
.end method
