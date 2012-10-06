.class public Lcom/android/mms/util/Recycler$MmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsRecycler"
.end annotation


# static fields
.field private static final ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "thread_id"

    .line 282
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v5, v0, v2

    const-string v1, "count(*) as msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 289
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v5, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 302
    const-string v0, "MaxMmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$MmsRecycler;->MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    return-void
.end method

.method private deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "latestDate"

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND locked=0 AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 440
    .local v0, cntDeleted:J
    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 454
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v12

    .line 482
    :goto_0
    return v0

    .line 457
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 459
    .local v8, limit:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 461
    .local v10, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 462
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND locked=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 468
    .local v9, msgs:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .line 472
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v8, :cond_2

    .line 473
    const/4 v0, 0x1

    .line 476
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 476
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 480
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 476
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #msgs:Landroid/database/Cursor;
    .restart local v10       #threadId:J
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 480
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 482
    goto :goto_0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 11
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 388
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const/4 v9, 0x0

    .line 392
    .local v9, cursor:Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    .line 394
    .local v6, latestDate:J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 395
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "thread_id=? AND (m_type=? OR m_type=? OR m_type=?) AND locked=0"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .end local v6           #latestDate:J
    aput-object v6, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const/16 v6, 0x84

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 405
    if-nez v9, :cond_2

    .line 406
    const-string v0, "Recycler"

    const-string v1, "MMS: deleteMessagesForThread got back null cursor"

    .end local v1           #resolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    if-eqz v9, :cond_0

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 410
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 411
    .local v8, count:I
    sub-int v10, v8, p4

    .line 417
    .local v10, numberToDelete:I
    if-gtz v10, :cond_3

    .line 424
    if-eqz v9, :cond_0

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 421
    :cond_3
    :try_start_2
    invoke-interface {v9, p4}, Landroid/database/Cursor;->move(I)Z

    .line 422
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 424
    .restart local v6       #latestDate:J
    if-eqz v9, :cond_4

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 428
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 424
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v6           #latestDate:J
    .end local v8           #count:I
    .end local v10           #numberToDelete:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 425
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 15
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 334
    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const/4 v9, 0x0

    .line 338
    .local v9, cursor:Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 339
    .local v11, latestDate:J
    const-wide/16 v4, 0x0

    .line 341
    .local v4, threadId:J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, msgId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 343
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "thread_id in (select thread_id from pdu where _id=?) AND (m_type=? OR m_type=? OR m_type=?) AND locked=0"

    .end local v4           #threadId:J
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v5, v0

    const/4 v0, 0x1

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    const/16 v6, 0x84

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    const/16 v6, 0x82

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "date DESC"

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 354
    if-nez v9, :cond_2

    .line 355
    const-string v0, "Recycler"

    const-string v1, "MMS: deleteOldMessagesInSameThreadAsMessage got back null cursor"

    .end local v1           #resolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    if-eqz v9, :cond_0

    .line 376
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 360
    .local v8, count:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 361
    .local v10, keep:I
    sub-int v14, v8, v10

    .line 367
    .local v14, numberToDelete:I
    if-gtz v14, :cond_3

    .line 375
    if-eqz v9, :cond_0

    .line 376
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 371
    :cond_3
    :try_start_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->move(I)Z

    .line 372
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 373
    .end local v11           #latestDate:J
    .local v6, latestDate:J
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v4

    .line 375
    .restart local v4       #threadId:J
    if-eqz v9, :cond_4

    .line 376
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    move-object v2, p0

    move-object/from16 v3, p1

    .line 380
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 375
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v4           #threadId:J
    .end local v6           #latestDate:J
    .end local v8           #count:I
    .end local v10           #keep:I
    .end local v13           #msgId:Ljava/lang/String;
    .end local v14           #numberToDelete:I
    .restart local v11       #latestDate:J
    :catchall_0
    move-exception v0

    move-wide v6, v11

    .end local v11           #latestDate:J
    .restart local v6       #latestDate:J
    :goto_1
    if-eqz v9, :cond_5

    .line 376
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 375
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v8       #count:I
    .restart local v10       #keep:I
    .restart local v13       #msgId:Ljava/lang/String;
    .restart local v14       #numberToDelete:I
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 323
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "threads"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "server_date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 327
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 305
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMMSMessagesPerThread()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 311
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    return-void
.end method
