.class abstract Lcom/miui/backup/ScriptChangePermissionItem;
.super Lcom/miui/backup/ScriptItem;
.source "BackupRestoreStrategy.java"


# instance fields
.field private mDir:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "permission"
    .parameter "dir"

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-direct {p0}, Lcom/miui/backup/ScriptItem;-><init>()V

    .line 360
    iput-object v0, p0, Lcom/miui/backup/ScriptChangePermissionItem;->mPermission:Ljava/lang/String;

    .line 361
    iput-object v0, p0, Lcom/miui/backup/ScriptChangePermissionItem;->mDir:Ljava/lang/String;

    .line 364
    iput-object p1, p0, Lcom/miui/backup/ScriptChangePermissionItem;->mPermission:Ljava/lang/String;

    .line 365
    iput-object p2, p0, Lcom/miui/backup/ScriptChangePermissionItem;->mDir:Ljava/lang/String;

    .line 366
    return-void
.end method


# virtual methods
.method public genScript()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "\'"

    const-string v2, " "

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ScriptChangePermissionItem;->getCmdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptChangePermissionItem;->mPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ScriptChangePermissionItem;->mDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCmdStr()Ljava/lang/String;
.end method
