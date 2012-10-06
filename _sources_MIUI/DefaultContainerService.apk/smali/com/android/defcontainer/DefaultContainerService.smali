.class public Lcom/android/defcontainer/DefaultContainerService;
.super Landroid/app/IntentService;
.source "DefaultContainerService.java"


# instance fields
.field private mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const-string v0, "DefaultContainerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/defcontainer/DefaultContainerService$1;

    invoke-direct {v0, p0}, Lcom/android/defcontainer/DefaultContainerService$1;-><init>(Lcom/android/defcontainer/DefaultContainerService;)V

    iput-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/defcontainer/DefaultContainerService;->setIntentRedelivery(Z)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/FileOutputStream;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyFile(Landroid/net/Uri;Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/defcontainer/DefaultContainerService;->recommendAppInstallLocation(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/defcontainer/DefaultContainerService;ZLandroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->checkFreeStorageInner(ZLandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private checkFreeStorageInner(ZLandroid/net/Uri;)Z
    .locals 26
    .parameter "external"
    .parameter "packageURI"

    .prologue
    .line 505
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    move-object v0, v2

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v2, apkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 507
    .local v17, size:J
    if-eqz p1, :cond_2

    .line 508
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 509
    .local v19, status:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 510
    .local v5, availSDSize:J
    const-string v22, "mounted"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 511
    new-instance v16, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 513
    .local v16, sdStats:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v5, v22, v24

    .line 516
    .end local v16           #sdStats:Landroid/os/StatFs;
    :cond_0
    cmp-long v22, v5, v17

    if-lez v22, :cond_1

    const/16 v22, 0x1

    .line 531
    .end local v5           #availSDSize:J
    .end local v19           #status:Ljava/lang/String;
    :goto_0
    return v22

    .line 516
    .restart local v5       #availSDSize:J
    .restart local v19       #status:Ljava/lang/String;
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 518
    .end local v5           #availSDSize:J
    .end local v19           #status:Ljava/lang/String;
    :cond_2
    new-instance v9, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 519
    .local v9, internalStats:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v20, v22, v24

    .line 521
    .local v20, totalInternalSize:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v3, v22, v24

    .line 524
    .local v3, availInternalSize:J
    move-wide v0, v3

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v10, v22, v24

    .line 526
    .local v10, pctNandFree:D
    move-wide/from16 v12, v17

    .line 528
    .local v12, reqInstallSize:J
    const-wide/16 v14, 0x0

    .line 529
    .local v14, reqInternalSize:J
    const-wide v22, 0x3fb999999999999aL

    cmpl-double v22, v10, v22

    if-ltz v22, :cond_3

    const/16 v22, 0x1

    move/from16 v8, v22

    .line 530
    .local v8, intThresholdOk:Z
    :goto_1
    add-long v22, v12, v14

    cmp-long v22, v22, v3

    if-gez v22, :cond_4

    const/16 v22, 0x1

    move/from16 v7, v22

    .line 531
    .local v7, intAvailOk:Z
    :goto_2
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    const/16 v22, 0x1

    goto :goto_0

    .line 529
    .end local v7           #intAvailOk:Z
    .end local v8           #intThresholdOk:Z
    :cond_3
    const/16 v22, 0x0

    move/from16 v8, v22

    goto :goto_1

    .line 530
    .restart local v8       #intThresholdOk:Z
    :cond_4
    const/16 v22, 0x0

    move/from16 v7, v22

    goto :goto_2

    .line 531
    .restart local v7       #intAvailOk:Z
    :cond_5
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private copyFile(Landroid/net/Uri;Ljava/io/FileOutputStream;)Z
    .locals 9
    .parameter "pPackageURI"
    .parameter "outStream"

    .prologue
    const/4 v8, 0x0

    const-string v7, "DefContainer"

    .line 336
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v4, srcPackageFile:Ljava/io/File;
    invoke-static {v4, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/File;Ljava/io/FileOutputStream;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 343
    const-string v5, "DefContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t copy file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 375
    .end local v4           #srcPackageFile:Ljava/io/File;
    :goto_0
    return v5

    .line 346
    :cond_1
    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 347
    const/4 v2, 0x0

    .line 349
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/defcontainer/DefaultContainerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 354
    if-nez v2, :cond_2

    .line 355
    const-string v5, "DefContainer"

    const-string v5, "Couldn\'t open file descriptor from download service (null)."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 356
    goto :goto_0

    .line 350
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 351
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "DefContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t open file descriptor from download service. Failed with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 352
    goto :goto_0

    .line 359
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    const-string v5, "DefContainer"

    const-string v5, "Opened file descriptor from download service."

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 366
    .local v0, dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    invoke-static {v0, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 367
    const-string v5, "DefContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t copy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to temp file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 368
    goto :goto_0

    .line 372
    .end local v0           #dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const-string v5, "DefContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package URI is not \'file:\' or \'content:\' - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 373
    goto/16 :goto_0

    .line 375
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "packageURI"
    .parameter "newCid"
    .parameter "key"
    .parameter "resFileName"

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 208
    .local v19, status:Ljava/lang/String;
    const-string v21, "mounted"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 209
    const-string v21, "DefContainer"

    const-string v22, "Make sure sdcard is mounted."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v21, 0x0

    .line 306
    .end local p0
    :goto_0
    return-object v21

    .line 214
    .restart local p0
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, codePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v6, codeFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 224
    .local v17, sizeBytes:J
    :try_start_0
    new-instance v20, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 226
    .local v20, zipFile:Ljava/util/zip/ZipFile;
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v13, nativeFiles:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->listPackageNativeBinariesLI(Ljava/util/zip/ZipFile;Ljava/util/List;)I

    .line 230
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .line 231
    .local v5, N:I
    const/4 v11, 0x0

    .end local p0
    .local v11, i:I
    :goto_1
    if-ge v11, v5, :cond_1

    .line 232
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 239
    .local v10, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    move-object v0, v10

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/util/zip/ZipEntry;

    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipEntry;->getSize()J
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v21

    add-long v17, v17, v21

    .line 231
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 241
    .end local v5           #N:I
    .end local v10           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    .end local v11           #i:I
    .end local v13           #nativeFiles:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    .end local v20           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 242
    .local v9, e:Ljava/util/zip/ZipException;
    const-string v21, "DefContainer"

    const-string v22, "Failed to extract data from package file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/16 v21, 0x0

    goto :goto_0

    .line 244
    .end local v9           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v21

    move-object/from16 v9, v21

    .line 245
    .local v9, e:Ljava/io/IOException;
    const-string v21, "DefContainer"

    const-string v22, "Failed to cache package shared libs"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    const/16 v21, 0x0

    goto :goto_0

    .line 250
    .end local v9           #e:Ljava/io/IOException;
    .restart local v5       #N:I
    .restart local v11       #i:I
    .restart local v13       #nativeFiles:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    .restart local v20       #zipFile:Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v14, 0x0

    .line 251
    .local v14, newCachePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    move-wide/from16 v0, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->createSdDir(JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    .line 252
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to create container "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 256
    :cond_2
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Created container for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " at path : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v15, Ljava/io/File;

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v15, resFile:Ljava/io/File;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 259
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to copy "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 262
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 266
    :cond_3
    :try_start_1
    new-instance v16, Ljava/io/File;

    const-string v21, "lib"

    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v16, sharedLibraryDir:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 269
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    .line 270
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v5, :cond_5

    .line 271
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 273
    .restart local v10       #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    move-object v0, v10

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/util/zip/ZipEntry;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v12

    .line 275
    .local v12, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v8, Ljava/io/File;

    move-object v0, v10

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .local v8, destFile:Ljava/io/File;
    invoke-static {v12, v8}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 277
    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t copy native binary "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v10

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/util/zip/ZipEntry;

    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v10

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    .end local v8           #destFile:Ljava/io/File;
    :catchall_0
    move-exception v21

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v21
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 284
    .end local v10           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    .end local v12           #is:Ljava/io/InputStream;
    .end local v16           #sharedLibraryDir:Ljava/io/File;
    :catch_2
    move-exception v21

    move-object/from16 v9, v21

    .line 285
    .restart local v9       #e:Ljava/io/IOException;
    const-string v21, "DefContainer"

    const-string v22, "Couldn\'t copy native file to container"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 287
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 281
    .end local v9           #e:Ljava/io/IOException;
    .restart local v8       #destFile:Ljava/io/File;
    .restart local v10       #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v16       #sharedLibraryDir:Ljava/io/File;
    :cond_4
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 270
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 290
    .end local v8           #destFile:Ljava/io/File;
    .end local v10           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    .end local v12           #is:Ljava/io/InputStream;
    :cond_5
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Copied "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 292
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to finalize "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " at path "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 296
    :cond_6
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Finalized container "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 298
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unmounting "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " at path "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Runtime;->gc()V

    .line 302
    invoke-static/range {p2 .. p2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    :goto_3
    move-object/from16 v21, v14

    .line 306
    goto/16 :goto_0

    .line 304
    :cond_7
    const-string v21, "DefContainer"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Container "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " not mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/FileOutputStream;)Z
    .locals 5
    .parameter "srcFile"
    .parameter "out"

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1           #inputStream:Ljava/io/InputStream;
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2, p1}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    .line 331
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_1
    :goto_1
    return v3

    .line 328
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 329
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 331
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_4
    throw v3

    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_3

    .line 328
    .end local v1           #inputStream:Ljava/io/InputStream;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #inputStream:Ljava/io/InputStream;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)Z
    .locals 7
    .parameter "inputStream"
    .parameter "out"

    .prologue
    const/4 v6, 0x0

    .line 311
    const/16 v3, 0x1000

    :try_start_0
    new-array v0, v3, [B

    .line 313
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_0

    .line 314
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 318
    .local v2, e:Ljava/io/IOException;
    const-string v3, "DefContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when copying file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 319
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v3

    .line 316
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private recommendAppInstallLocation(ILjava/lang/String;I)I
    .locals 33
    .parameter "installLocation"
    .parameter "archiveFilePath"
    .parameter "flags"

    .prologue
    .line 388
    const/4 v9, 0x0

    .line 389
    .local v9, checkInt:Z
    const/4 v8, 0x0

    .line 390
    .local v8, checkExt:Z
    const/4 v7, 0x0

    .line 393
    .local v7, checkBoth:Z
    and-int/lit8 v29, p3, 0x1

    if-eqz v29, :cond_2

    .line 395
    const/4 v9, 0x1

    .line 440
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v26

    .line 441
    .local v26, status:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 442
    .local v5, availSDSize:J
    const/16 v16, 0x0

    .line 443
    .local v16, mediaAvailable:Z
    const-string v29, "mounted"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 444
    new-instance v25, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 446
    .local v25, sdStats:Landroid/os/StatFs;
    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/StatFs;->getBlockSize()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    mul-long v5, v29, v31

    .line 448
    const/16 v16, 0x1

    .line 450
    .end local v25           #sdStats:Landroid/os/StatFs;
    :cond_0
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 451
    .local v15, internalStats:Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockCount()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    mul-long v27, v29, v31

    .line 453
    .local v27, totalInternalSize:J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    mul-long v3, v29, v31

    .line 456
    .local v3, availInternalSize:J
    move-wide v0, v3

    long-to-double v0, v0

    move-wide/from16 v29, v0

    move-wide/from16 v0, v27

    long-to-double v0, v0

    move-wide/from16 v31, v0

    div-double v17, v29, v31

    .line 458
    .local v17, pctNandFree:D
    new-instance v2, Ljava/io/File;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    .local v2, apkFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v19

    .line 462
    .local v19, pkgLen:J
    move-wide/from16 v21, v19

    .line 464
    .local v21, reqInstallSize:J
    const-wide/16 v23, 0x0

    .line 465
    .local v23, reqInternalSize:J
    const-wide v29, 0x3fb999999999999aL

    cmpl-double v29, v17, v29

    if-ltz v29, :cond_a

    const/16 v29, 0x1

    move/from16 v14, v29

    .line 466
    .local v14, intThresholdOk:Z
    :goto_1
    add-long v29, v21, v23

    cmp-long v29, v29, v3

    if-gez v29, :cond_b

    const/16 v29, 0x1

    move/from16 v13, v29

    .line 467
    .local v13, intAvailOk:Z
    :goto_2
    const/4 v11, 0x0

    .line 468
    .local v11, fitsOnSd:Z
    if-eqz v16, :cond_1

    cmp-long v29, v21, v5

    if-gez v29, :cond_1

    .line 471
    const-wide/16 v29, 0x0

    cmp-long v29, v23, v29

    if-nez v29, :cond_c

    .line 472
    const/4 v11, 0x1

    .line 477
    :cond_1
    :goto_3
    if-eqz v14, :cond_d

    if-eqz v13, :cond_d

    const/16 v29, 0x1

    move/from16 v10, v29

    .line 478
    .local v10, fitsOnInt:Z
    :goto_4
    if-eqz v9, :cond_e

    .line 480
    if-eqz v10, :cond_f

    .line 481
    const/16 v29, 0x1

    .line 501
    :goto_5
    return v29

    .line 397
    .end local v2           #apkFile:Ljava/io/File;
    .end local v3           #availInternalSize:J
    .end local v5           #availSDSize:J
    .end local v10           #fitsOnInt:Z
    .end local v11           #fitsOnSd:Z
    .end local v13           #intAvailOk:Z
    .end local v14           #intThresholdOk:Z
    .end local v15           #internalStats:Landroid/os/StatFs;
    .end local v16           #mediaAvailable:Z
    .end local v17           #pctNandFree:D
    .end local v19           #pkgLen:J
    .end local v21           #reqInstallSize:J
    .end local v23           #reqInternalSize:J
    .end local v26           #status:Ljava/lang/String;
    .end local v27           #totalInternalSize:J
    :cond_2
    and-int/lit8 v29, p3, 0x10

    if-eqz v29, :cond_3

    .line 400
    const/4 v9, 0x1

    .line 401
    goto/16 :goto_0

    .line 402
    :cond_3
    and-int/lit8 v29, p3, 0x8

    if-eqz v29, :cond_4

    .line 405
    const/4 v8, 0x1

    .line 406
    goto/16 :goto_0

    .line 409
    :cond_4
    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 410
    const/4 v9, 0x1

    .line 411
    goto/16 :goto_0

    .line 412
    :cond_5
    const/16 v29, 0x2

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 413
    const/4 v8, 0x1

    .line 414
    const/4 v7, 0x1

    .line 415
    goto/16 :goto_0

    .line 416
    :cond_6
    if-nez p1, :cond_7

    .line 417
    const/4 v9, 0x1

    .line 418
    const/4 v7, 0x1

    .line 419
    goto/16 :goto_0

    .line 422
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/defcontainer/DefaultContainerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "default_install_location"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 426
    .local v12, installPreference:I
    const/16 v29, 0x1

    move v0, v12

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 427
    const/4 v9, 0x1

    .line 428
    goto/16 :goto_0

    .line 429
    :cond_8
    const/16 v29, 0x2

    move v0, v12

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 430
    const/4 v8, 0x1

    .line 431
    goto/16 :goto_0

    .line 434
    :cond_9
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 465
    .end local v12           #installPreference:I
    .restart local v2       #apkFile:Ljava/io/File;
    .restart local v3       #availInternalSize:J
    .restart local v5       #availSDSize:J
    .restart local v15       #internalStats:Landroid/os/StatFs;
    .restart local v16       #mediaAvailable:Z
    .restart local v17       #pctNandFree:D
    .restart local v19       #pkgLen:J
    .restart local v21       #reqInstallSize:J
    .restart local v23       #reqInternalSize:J
    .restart local v26       #status:Ljava/lang/String;
    .restart local v27       #totalInternalSize:J
    :cond_a
    const/16 v29, 0x0

    move/from16 v14, v29

    goto :goto_1

    .line 466
    .restart local v14       #intThresholdOk:Z
    :cond_b
    const/16 v29, 0x0

    move/from16 v13, v29

    goto :goto_2

    .line 473
    .restart local v11       #fitsOnSd:Z
    .restart local v13       #intAvailOk:Z
    :cond_c
    cmp-long v29, v23, v3

    if-gez v29, :cond_1

    if-eqz v14, :cond_1

    .line 474
    const/4 v11, 0x1

    goto :goto_3

    .line 477
    :cond_d
    const/16 v29, 0x0

    move/from16 v10, v29

    goto :goto_4

    .line 483
    .restart local v10       #fitsOnInt:Z
    :cond_e
    if-eqz v8, :cond_f

    .line 484
    if-eqz v11, :cond_f

    .line 485
    const/16 v29, 0x2

    goto :goto_5

    .line 488
    :cond_f
    if-eqz v7, :cond_11

    .line 490
    if-eqz v10, :cond_10

    .line 491
    const/16 v29, 0x1

    goto :goto_5

    .line 494
    :cond_10
    if-eqz v11, :cond_11

    .line 495
    const/16 v29, 0x2

    goto :goto_5

    .line 498
    :cond_11
    if-nez v8, :cond_12

    if-eqz v7, :cond_13

    :cond_12
    if-nez v16, :cond_13

    .line 499
    const/16 v29, -0x5

    goto/16 :goto_5

    .line 501
    :cond_13
    const/16 v29, -0x1

    goto/16 :goto_5
.end method


# virtual methods
.method eraseFiles(Ljava/io/File;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 190
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, files:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 193
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 194
    .local v1, file:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #files:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 199
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 175
    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 178
    .local v1, pm:Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 180
    .local v0, pkg:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 182
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 187
    .end local v0           #pkg:Ljava/lang/String;
    .end local v1           #pm:Landroid/content/pm/IPackageManager;
    :cond_0
    return-void
.end method
