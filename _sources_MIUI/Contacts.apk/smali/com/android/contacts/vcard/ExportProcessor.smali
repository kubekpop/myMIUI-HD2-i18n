.class public Lcom/android/contacts/vcard/ExportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V
    .locals 2
    .parameter "service"
    .parameter "exportRequest"
    .parameter "jobId"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 61
    invoke-virtual {p1}, Lcom/android/contacts/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 62
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    .line 65
    iput p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    .line 66
    return-void
.end method

.method private doCancelNotification()V
    .locals 7

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v3, 0x7f0b01d9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 251
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 253
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-class v2, Lcom/android/contacts/DialtactsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 263
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .locals 9
    .parameter "uri"
    .parameter "totalCount"
    .parameter "currentCount"

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0b0099

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 241
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 243
    return-void
.end method

.method private runInternal()V
    .locals 27

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    move-object/from16 v18, v0

    .line 98
    .local v18, request:Lcom/android/contacts/vcard/ExportRequest;
    const/4 v11, 0x0

    .line 99
    .local v11, composer:Lcom/android/contacts/model/vcard/VCardComposer;
    const/16 v25, 0x0

    .line 100
    .local v25, writer:Ljava/io/Writer;
    const/16 v19, 0x0

    .line 102
    .local v19, successful:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    const-string v5, "VCardExport"

    const-string v6, "Export request is cancelled before handling the request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v11, :cond_0

    .line 205
    throw v11

    .line 207
    :cond_0
    if-eqz v25, :cond_1

    .line 209
    :try_start_1
    throw v25
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 214
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v11

    .line 216
    .end local v11           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .local v4, composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :goto_1
    return-void

    .line 106
    .end local v4           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v11       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :cond_2
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v23, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .local v23, uri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v17

    .line 121
    .local v17, outputStream:Ljava/io/OutputStream;
    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    move-object v15, v0

    .line 123
    .local v15, exportType:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const v6, 0x7f0b0001

    invoke-virtual {v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v24

    .line 130
    .local v24, vcardType:I
    :goto_2
    new-instance v4, Lcom/android/contacts/model/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v24

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    .end local v11           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :try_start_5
    new-instance v26, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    .end local v25           #writer:Ljava/io/Writer;
    .local v26, writer:Ljava/io/Writer;
    :try_start_6
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "for_export_only"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 142
    .local v10, contentUriForRawContactsEntity:Landroid/net/Uri;
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/contacts/model/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 145
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, errorReason:Ljava/lang/String;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialization of vCard composer failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 149
    .local v22, translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const v6, 0x7f0b009a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 152
    .local v20, title:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 204
    if-eqz v4, :cond_3

    .line 205
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->terminate()V

    .line 207
    :cond_3
    if-eqz v26, :cond_4

    .line 209
    :try_start_7
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 214
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 153
    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 110
    .end local v4           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .end local v10           #contentUriForRawContactsEntity:Landroid/net/Uri;
    .end local v14           #errorReason:Ljava/lang/String;
    .end local v15           #exportType:Ljava/lang/String;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .end local v20           #title:Ljava/lang/String;
    .end local v22           #translatedErrorReason:Ljava/lang/String;
    .end local v24           #vcardType:I
    .restart local v11       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 111
    .local v13, e:Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v5, "VCardExport"

    const-string v6, "FileNotFoundException thrown"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const v6, 0x7f0b009f

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v23, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 117
    .restart local v14       #errorReason:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 204
    if-eqz v11, :cond_5

    .line 205
    throw v11

    .line 207
    :cond_5
    if-eqz v25, :cond_6

    .line 209
    :try_start_9
    throw v25
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 214
    .end local v13           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v4, v11

    .line 118
    .end local v11           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    goto/16 :goto_1

    .line 127
    .end local v4           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .end local v14           #errorReason:Ljava/lang/String;
    .restart local v11       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v15       #exportType:Ljava/lang/String;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    :cond_7
    :try_start_a
    invoke-static {v15}, Lcom/android/contacts/model/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v24

    .restart local v24       #vcardType:I
    goto/16 :goto_2

    .line 156
    .end local v11           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v4       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v10       #contentUriForRawContactsEntity:Landroid/net/Uri;
    .restart local v26       #writer:Ljava/io/Writer;
    :cond_8
    :try_start_b
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->getCount()I

    move-result v21

    .line 157
    .local v21, total:I
    if-nez v21, :cond_b

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const v6, 0x7f0b0095

    invoke-virtual {v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 160
    .restart local v20       #title:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 204
    if-eqz v4, :cond_9

    .line 205
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->terminate()V

    .line 207
    :cond_9
    if-eqz v26, :cond_a

    .line 209
    :try_start_c
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 214
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 161
    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 164
    .end local v20           #title:Ljava/lang/String;
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v26       #writer:Ljava/io/Writer;
    :cond_b
    const/4 v12, 0x1

    .line 165
    .local v12, current:I
    :goto_6
    :try_start_d
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_12

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 167
    const-string v5, "VCardExport"

    const-string v6, "Export request is cancelled during composing vCard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 204
    if-eqz v4, :cond_c

    .line 205
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->terminate()V

    .line 207
    :cond_c
    if-eqz v26, :cond_d

    .line 209
    :try_start_e
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 214
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 168
    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 171
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v26       #writer:Ljava/io/Writer;
    :cond_e
    :try_start_f
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 186
    :try_start_10
    rem-int/lit8 v5, v12, 0x64

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v21

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 189
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 172
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 173
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v14

    .line 174
    .restart local v14       #errorReason:Ljava/lang/String;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 177
    .restart local v22       #translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const v6, 0x7f0b009b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 180
    .restart local v20       #title:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 204
    if-eqz v4, :cond_10

    .line 205
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->terminate()V

    .line 207
    :cond_10
    if-eqz v26, :cond_11

    .line 209
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 214
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 181
    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 191
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #errorReason:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    .end local v22           #translatedErrorReason:Ljava/lang/String;
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v26       #writer:Ljava/io/Writer;
    :cond_12
    :try_start_12
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully finished exporting vCard "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 198
    const/16 v19, 0x1

    .line 199
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    const v6, 0x7f0b01d8

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 202
    .restart local v20       #title:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 204
    if-eqz v4, :cond_13

    .line 205
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->terminate()V

    .line 207
    :cond_13
    if-eqz v26, :cond_14

    .line 209
    :try_start_13
    invoke-virtual/range {v26 .. v26}, Ljava/io/Writer;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 214
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, v0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v25, v26

    .line 216
    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    goto/16 :goto_1

    .line 204
    .end local v4           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .end local v10           #contentUriForRawContactsEntity:Landroid/net/Uri;
    .end local v12           #current:I
    .end local v15           #exportType:Ljava/lang/String;
    .end local v16           #filename:Ljava/lang/String;
    .end local v17           #outputStream:Ljava/io/OutputStream;
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #total:I
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #vcardType:I
    .restart local v11       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :catchall_0
    move-exception v5

    move-object v4, v11

    .end local v11           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :goto_a
    if-eqz v4, :cond_15

    .line 205
    invoke-virtual {v4}, Lcom/android/contacts/model/vcard/VCardComposer;->terminate()V

    .line 207
    :cond_15
    if-eqz v25, :cond_16

    .line 209
    :try_start_14
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    .line 214
    :cond_16
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v7, v0

    move-object v0, v6

    move v1, v7

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    .line 204
    throw v5

    .line 210
    :catch_2
    move-exception v13

    .line 211
    .restart local v13       #e:Ljava/io/IOException;
    const-string v6, "VCardExport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 210
    .end local v4           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .end local v13           #e:Ljava/io/IOException;
    .restart local v11       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    :catch_3
    move-exception v13

    .line 211
    .restart local v13       #e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 210
    .local v13, e:Ljava/io/FileNotFoundException;
    .restart local v14       #errorReason:Ljava/lang/String;
    .restart local v23       #uri:Landroid/net/Uri;
    :catch_4
    move-exception v13

    .line 211
    .local v13, e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 210
    .end local v11           #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .end local v13           #e:Ljava/io/IOException;
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v4       #composer:Lcom/android/contacts/model/vcard/VCardComposer;
    .restart local v10       #contentUriForRawContactsEntity:Landroid/net/Uri;
    .restart local v15       #exportType:Ljava/lang/String;
    .restart local v17       #outputStream:Ljava/io/OutputStream;
    .restart local v20       #title:Ljava/lang/String;
    .restart local v22       #translatedErrorReason:Ljava/lang/String;
    .restart local v24       #vcardType:I
    .restart local v26       #writer:Ljava/io/Writer;
    :catch_5
    move-exception v13

    .line 211
    .restart local v13       #e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 210
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #errorReason:Ljava/lang/String;
    .end local v22           #translatedErrorReason:Ljava/lang/String;
    .restart local v21       #total:I
    :catch_6
    move-exception v13

    .line 211
    .restart local v13       #e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 210
    .end local v13           #e:Ljava/io/IOException;
    .end local v20           #title:Ljava/lang/String;
    .restart local v12       #current:I
    :catch_7
    move-exception v13

    .line 211
    .restart local v13       #e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 210
    .restart local v14       #errorReason:Ljava/lang/String;
    .restart local v20       #title:Ljava/lang/String;
    .restart local v22       #translatedErrorReason:Ljava/lang/String;
    :catch_8
    move-exception v13

    .line 211
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 210
    .end local v13           #e:Ljava/io/IOException;
    .end local v14           #errorReason:Ljava/lang/String;
    .end local v22           #translatedErrorReason:Ljava/lang/String;
    .restart local v16       #filename:Ljava/lang/String;
    :catch_9
    move-exception v13

    .line 211
    .restart local v13       #e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 204
    .end local v10           #contentUriForRawContactsEntity:Landroid/net/Uri;
    .end local v12           #current:I
    .end local v13           #e:Ljava/io/IOException;
    .end local v16           #filename:Ljava/lang/String;
    .end local v20           #title:Ljava/lang/String;
    .end local v21           #total:I
    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v5

    goto/16 :goto_a

    .end local v25           #writer:Ljava/io/Writer;
    .restart local v26       #writer:Ljava/io/Writer;
    :catchall_2
    move-exception v5

    move-object/from16 v25, v26

    .end local v26           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    goto/16 :goto_a
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 220
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    :goto_0
    return-object v1

    .line 222
    :cond_0
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 224
    :cond_1
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 227
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v1, 0x1

    .line 268
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    monitor-exit p0

    return v0

    .line 271
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 272
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/vcard/ExportRequest;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    const-string v1, "VCardExport"

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->runInternal()V

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :cond_0
    monitor-enter p0

    .line 90
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 91
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 93
    return-void

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-enter p0

    .line 90
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 91
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    throw v1

    .line 85
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
