.class public Lcom/miui/milk/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5_32([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 44
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 48
    .local v3, md5:Ljava/security/MessageDigest;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v4, strbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 53
    .local v0, digest:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 54
    aget-byte v5, v0, v2

    invoke-static {v5}, Lcom/miui/milk/util/MD5;->byte2Hex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v0           #digest:[B
    .end local v2           #i:I
    .end local v3           #md5:Ljava/security/MessageDigest;
    .end local v4           #strbuf:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 46
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v5, 0x0

    .line 57
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v5

    .restart local v0       #digest:[B
    .restart local v2       #i:I
    .restart local v3       #md5:Ljava/security/MessageDigest;
    .restart local v4       #strbuf:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private static byte2Hex(B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 13
    and-int/lit8 v1, p0, 0x7f

    if-gez p0, :cond_0

    const/16 v2, 0x80

    :goto_0
    add-int v0, v1, v2

    .line 14
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    const-string v2, "0"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 13
    .end local v0           #value:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 14
    .restart local v0       #value:I
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method
