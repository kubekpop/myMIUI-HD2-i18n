.class abstract Lcom/miui/backup/CalllogStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mCallController:Lcom/miui/milk/control/local/CalllogController;

.field protected mContext:Landroid/content/Context;

.field protected mDataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 543
    iput-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    .line 544
    iput-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mDataFile:Ljava/io/File;

    .line 545
    iput-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mContext:Landroid/content/Context;

    .line 548
    iput-object p3, p0, Lcom/miui/backup/CalllogStrategy;->mContext:Landroid/content/Context;

    .line 549
    new-instance v0, Lcom/miui/milk/control/local/CalllogController;

    iget-object v1, p0, Lcom/miui/backup/CalllogStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/CalllogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    .line 550
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mDataFile:Ljava/io/File;

    .line 551
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 556
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/CalllogController;->cancel()V

    .line 557
    return-void
.end method
