.class public final Ln;
.super Lbk;


# static fields
.field private static f:I

.field private static g:Ln;


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:J

.field d:J

.field e:Lab;

.field private h:Lbg;

.field private i:Lq;

.field private j:LaX;

.field private k:LC;

.field private l:LaS;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Vector;

.field private o:Ljava/util/Vector;

.field private p:I

.field private q:I

.field private r:LF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4e20

    sput v0, Ln;->f:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lbk;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ln;->n:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ln;->o:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln;->a:Ljava/lang/Object;

    iput v1, p0, Ln;->p:I

    iput v1, p0, Ln;->b:I

    iput v1, p0, Ln;->q:I

    new-instance v0, LaS;

    const-string v5, "g"

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, LaS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ln;->l:LaS;

    new-instance v2, LO;

    invoke-direct {v2}, LO;-><init>()V

    new-instance v0, Lbg;

    const-string v1, "MobileServiceMux TaskRunner"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lbg;-><init>(LO;Ljava/lang/String;I)V

    iput-object v0, p0, Ln;->h:Lbg;

    iget-object v0, p0, Ln;->h:Lbg;

    invoke-virtual {v0}, Lbg;->b()V

    invoke-static {}, LN;->a()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->f()LC;

    move-result-object v0

    iput-object v0, p0, Ln;->k:LC;

    iput-object p1, p0, Ln;->m:Ljava/lang/String;

    new-instance v0, LaX;

    iget-object v1, p0, Ln;->h:Lbg;

    iget-object v3, p0, Ln;->k:LC;

    const-string v4, "MobileServiceMux AsyncHttpRequestFactory"

    const/4 v5, 0x3

    invoke-direct/range {v0 .. v5}, LaX;-><init>(Lbg;LO;LC;Ljava/lang/String;I)V

    iput-object v0, p0, Ln;->j:LaX;

    iget-object v0, p0, Ln;->j:LaX;

    invoke-virtual {v0}, LaX;->a()V

    new-instance v0, LaJ;

    iget-object v1, p0, Ln;->h:Lbg;

    iget-object v2, p0, Ln;->l:LaS;

    invoke-direct {v0, p0, v1, v2}, LaJ;-><init>(Ln;Lbg;LaS;)V

    iput-object v0, p0, Ln;->i:Lq;

    new-instance v0, LF;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LF;-><init>(I)V

    iput-object v0, p0, Ln;->r:LF;

    new-instance v0, Lab;

    iget-object v1, p0, Ln;->h:Lbg;

    new-instance v2, LaC;

    invoke-direct {v2, p0}, LaC;-><init>(Ln;)V

    invoke-direct {v0, v1, v2}, Lab;-><init>(Lbg;Ljava/lang/Runnable;)V

    iput-object v0, p0, Ln;->e:Lab;

    return-void
.end method

.method private a(LY;LaA;)LG;
    .locals 10

    invoke-virtual {p1}, LY;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lan;

    invoke-virtual {p2}, LaA;->g()I

    move-result v0

    invoke-virtual {p2}, LaA;->d()I

    move-result v1

    invoke-virtual {p2}, LaA;->f()LR;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lan;-><init>(IILR;)V

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p2}, LaA;->h()[LR;

    move-result-object v5

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, v5

    if-ge v6, v0, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {v7}, LR;->e()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "Content-Location"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lan;

    if-nez v1, :cond_0

    invoke-virtual {v7}, LR;->e()Ljava/util/Hashtable;

    move-result-object v1

    const-string v8, "X-Masf-Response-Code"

    invoke-virtual {v1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lan;

    invoke-virtual {p2}, LaA;->g()I

    move-result v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v8, v9, v1, v7}, Lan;-><init>(IILR;)V

    invoke-virtual {v4, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Lan;->a(LR;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v7}, Lan;->a(LR;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Ln;->a:Ljava/lang/Object;

    monitor-enter v2

    :goto_2
    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    iget-object v6, p0, Ln;->r:LF;

    invoke-virtual {v0}, Lan;->a()LaA;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, LF;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Lan;->a()LaA;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Ln;->g:Ln;

    if-eqz v0, :cond_2

    sget-object v0, Ln;->g:Ln;

    iget-object v0, v0, Ln;->j:LaX;

    if-eqz v0, :cond_0

    sget-object v0, Ln;->g:Ln;

    iget-object v0, v0, Ln;->j:LaX;

    invoke-virtual {v0}, LaX;->b()V

    :cond_0
    sget-object v0, Ln;->g:Ln;

    iget-object v0, v0, Ln;->h:Lbg;

    if-eqz v0, :cond_1

    sget-object v0, Ln;->g:Ln;

    iget-object v0, v0, Ln;->h:Lbg;

    invoke-virtual {v0}, Lbg;->c()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Ln;->g:Ln;

    :cond_2
    return-void
.end method

.method private a(LaE;LG;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, LaE;->h()Lar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lar;->a(LaE;LG;)V

    :cond_0
    invoke-direct {p0}, Ln;->e()[Lw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, LG;->e()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, LG;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, LG;->e()V

    throw v0
.end method

.method private a(LaE;Ljava/lang/Exception;)V
    .locals 5

    invoke-virtual {p1}, LaE;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LaE;->i()J

    move-result-wide v0

    new-instance v2, LaD;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, LaD;-><init>(Ln;LaE;Z)V

    new-instance v3, Lab;

    iget-object v4, p0, Ln;->h:Lbg;

    invoke-direct {v3, v4, v2}, Lab;-><init>(Lbg;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, v1}, Lab;->a(J)V

    invoke-virtual {v3}, Lab;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LaE;->h()Lar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lar;->a(LaE;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v6, Ln;

    monitor-enter v6

    :try_start_0
    sget-object v0, Ln;->g:Ln;

    if-nez v0, :cond_0

    new-instance v0, Ln;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ln;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ln;->g:Ln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private a(Ljava/util/Vector;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [LaE;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, LaE;->c_()Ljava/io/InputStream;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ln;->j:LaX;

    iget-object v3, p0, Ln;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, LaX;->a(Ljava/lang/String;)LaF;

    move-result-object v2

    const-string v3, "POST"

    invoke-interface {v2, v3}, LaF;->a(Ljava/lang/String;)V

    new-instance v3, Lav;

    iget-object v4, p0, Ln;->l:LaS;

    invoke-virtual {v4}, LaS;->c_()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lav;

    invoke-direct {v5, v0}, Lav;-><init>([Ljava/io/InputStream;)V

    invoke-direct {v3, v4, v5}, Lav;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-interface {v2, v3}, LaF;->a(Ljava/io/InputStream;)V

    sget v3, Ln;->f:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, LaF;->a(J)V

    const-string v3, "application/binary"

    invoke-interface {v2, v3}, LaF;->b(Ljava/lang/String;)V

    new-instance v3, Lac;

    iget-object v4, p0, Ln;->h:Lbg;

    new-instance v5, Laz;

    invoke-direct {v5, p0, v2, v1, v0}, Laz;-><init>(Ln;LaF;[LaE;I)V

    invoke-direct {v3, v4, v5}, Lac;-><init>(Lbg;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, LaF;->a(Ll;)V

    return-void
.end method

.method static synthetic a(Ln;)V
    .locals 0

    invoke-direct {p0}, Ln;->d()V

    return-void
.end method

.method static synthetic a(Ln;LaF;[Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v8, "Request didn\'t complete"

    invoke-interface {p1}, LaF;->b()I

    move-result v1

    invoke-interface {p1}, LaF;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, LaF;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, LaF;->h()Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Ln;->a([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Ln;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x1f6

    if-ne v1, v3, :cond_4

    new-instance v2, Lba;

    invoke-direct {v2, v1}, Lba;-><init>(I)V

    invoke-direct {p0, p2, v2}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0xc8

    if-eq v1, v3, :cond_5

    new-instance v2, Lba;

    invoke-direct {v2, v1}, Lba;-><init>(I)V

    invoke-static {p2, v2}, Ln;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-direct {p0}, Ln;->e()[Lw;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    const-string v1, "application/binary"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bad content-type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_7
    :try_start_0
    iget v1, p0, Ln;->q:I

    int-to-long v1, v1

    invoke-interface {p1}, LaF;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Ln;->q:I

    invoke-interface {p1}, LaF;->e()Ljava/io/DataInputStream;

    move-result-object v1

    new-instance v4, LD;

    invoke-direct {v4, v1}, LD;-><init>(Ljava/io/DataInputStream;)V

    move v5, v9

    :goto_1
    array-length v1, p2

    if-ge v5, v1, :cond_b

    invoke-virtual {v4}, LD;->b()LG;

    move-result-object v3

    if-eqz v3, :cond_b

    move v2, v9

    :goto_2
    array-length v1, p2

    if-ge v2, v1, :cond_d

    aget-object v1, p2, v2

    check-cast v1, LaE;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, LaE;->g()I

    move-result v6

    invoke-virtual {v3}, LG;->g()I

    move-result v7

    if-ne v6, v7, :cond_8

    const/4 v6, 0x0

    aput-object v6, p2, v2

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_a

    instance-of v1, v3, LaA;

    if-eqz v1, :cond_c

    instance-of v1, v2, LY;

    if-eqz v1, :cond_c

    move-object v0, v2

    check-cast v0, LY;

    move-object v1, v0

    check-cast v3, LaA;

    invoke-direct {p0, v1, v3}, Ln;->a(LY;LaA;)LG;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, LG;->d()I

    move-result v3

    const/16 v6, 0x226

    if-ne v3, v6, :cond_9

    invoke-virtual {v1}, LG;->e()V

    new-instance v1, Lba;

    invoke-direct {v1, v3}, Lba;-><init>(I)V

    invoke-direct {p0, v2, v1}, Ln;->a(LaE;Ljava/lang/Exception;)V

    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_9
    invoke-direct {p0, v2, v1}, Ln;->a(LaE;LG;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    invoke-virtual {v3}, LG;->b_()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v3}, LG;->c_()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    :try_start_3
    invoke-virtual {v3}, LG;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_b
    :try_start_5
    invoke-virtual {v4}, LD;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request didn\'t complete"

    invoke-direct {v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Request didn\'t complete"

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v1

    goto :goto_6

    :cond_c
    move-object v1, v3

    goto :goto_4

    :cond_d
    move-object v2, v10

    goto/16 :goto_3
.end method

.method static synthetic a(Ln;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object p0, p1, v0

    check-cast p0, LaE;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LaE;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Ln;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1, p2}, Ln;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method private a([Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Connection disallowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ln;->a([Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-direct {p0}, Ln;->e()[Lw;

    return-void
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object v0, p0, v1

    check-cast v0, LaE;

    invoke-virtual {v0}, LaE;->h()Lar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, p1}, Lar;->a(LaE;Ljava/lang/Exception;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b()Ln;
    .locals 1

    sget-object v0, Ln;->g:Ln;

    return-object v0
.end method

.method private b([Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    check-cast v0, LaE;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Ln;->a(LaE;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    aput-object v0, p1, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 9

    iget-object v1, p0, Ln;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ln;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [LaE;

    iget-object v2, p0, Ln;->o:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iget-object v2, p0, Ln;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Ln;->l:LaS;

    invoke-virtual {v1}, LaS;->b_()I

    move-result v1

    const/4 v2, 0x0

    move v5, v2

    move v6, v1

    :goto_0
    array-length v1, v3

    if-ge v5, v1, :cond_2

    aget-object v2, v3, v5

    instance-of v1, v2, LY;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, LY;

    move-object v1, v0

    invoke-virtual {v1}, LY;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v7, p0, Ln;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v8, p0, Ln;->r:LF;

    invoke-virtual {v8, v1}, LF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :try_start_3
    aput-object v7, v3, v5

    check-cast v1, LG;

    invoke-direct {p0, v2, v1}, Ln;->a(LaE;LG;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v6

    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v3, v1}, Ln;->b([Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_7
    invoke-direct {p0}, Ln;->f()I

    move-result v1

    invoke-virtual {v2, v1}, LaE;->a(I)V

    invoke-virtual {v2}, LaE;->b_()I

    move-result v1

    add-int/2addr v1, v6

    const v7, 0x8000

    if-le v1, v7, :cond_3

    invoke-direct {p0, v4}, Ln;->a(Ljava/util/Vector;)V

    iget-object v1, p0, Ln;->l:LaS;

    invoke-virtual {v1}, LaS;->b_()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    :goto_3
    const/4 v6, 0x0

    aput-object v6, v3, v5

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2}, LaE;->b_()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v4}, Ln;->a(Ljava/util/Vector;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :cond_3
    move v1, v6

    goto :goto_3
.end method

.method private e()[Lw;
    .locals 3

    iget-object v0, p0, Ln;->n:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln;->n:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lw;

    iget-object v2, p0, Ln;->n:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ln;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)LaH;
    .locals 1

    new-instance v0, Li;

    invoke-direct {v0, p1, p2}, Li;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(LB;)V
    .locals 1

    iget-object v0, p0, Ln;->i:Lq;

    invoke-virtual {v0, p1}, Lq;->a(LB;)V

    return-void
.end method

.method public final a(LaE;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ln;->a(LaE;Z)V

    return-void
.end method

.method public final a(LaE;Z)V
    .locals 9

    iget-object v0, p0, Ln;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ln;->o:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xa

    add-long/2addr v3, v1

    iget-wide v5, p0, Ln;->d:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    const-wide/16 v5, 0x64

    add-long/2addr v1, v5

    iput-wide v1, p0, Ln;->c:J

    iput-wide v3, p0, Ln;->d:J

    iget-object v1, p0, Ln;->e:Lab;

    iget-wide v2, p0, Ln;->d:J

    invoke-virtual {v1, v2, v3}, Lab;->b(J)V

    iget-object v1, p0, Ln;->e:Lab;

    invoke-virtual {v1}, Lab;->d()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget-wide v1, p0, Ln;->c:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_2

    iput-wide v3, p0, Ln;->d:J

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    iget-wide v1, p0, Ln;->d:J

    iget-wide v3, p0, Ln;->c:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-wide v1, p0, Ln;->c:J

    iput-wide v1, p0, Ln;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final b(LB;)V
    .locals 1

    iget-object v0, p0, Ln;->i:Lq;

    invoke-virtual {v0, p1}, Lq;->b(LB;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Ln;->d()V

    return-void
.end method
