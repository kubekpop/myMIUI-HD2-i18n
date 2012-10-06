.class public abstract Lcom/android/contacts/model/FallbackSource$CommonInflater;
.super Ljava/lang/Object;
.source "FallbackSource.java"

# interfaces
.implements Lcom/android/contacts/model/ContactsSource$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/FallbackSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommonInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLabelColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const-string v0, "data3"

    return-object v0
.end method

.method protected getTypeColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    const-string v0, "data2"

    return-object v0
.end method

.method protected getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 585
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v0

    .line 586
    .local v0, labelRes:I
    if-nez p2, :cond_0

    .line 587
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 591
    :goto_0
    return-object v1

    .line 588
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->isCustom(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    const-string v3, ""

    :goto_1
    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v3, p3

    goto :goto_1

    .line 591
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getTypeLabelResource(Ljava/lang/Integer;)I
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "values"

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getTypeColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 603
    .local v1, type:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getLabelColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getTypeColumn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 597
    .local v1, type:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getLabelColumn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/contacts/model/FallbackSource$CommonInflater;->getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 573
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
