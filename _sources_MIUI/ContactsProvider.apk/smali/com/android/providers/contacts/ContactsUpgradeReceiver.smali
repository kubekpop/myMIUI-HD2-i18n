.class public Lcom/android/providers/contacts/ContactsUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x140

    const-string v6, "db_version"

    const-string v9, "ContactsUpgradeReceiver"

    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 50
    .local v3, startTime:J
    const-string v6, "ContactsUpgradeReceiver"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 51
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "db_version"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, prefVersion:I
    if-eq v1, v8, :cond_0

    .line 59
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "db_version"

    const/16 v8, 0x140

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    const-string v6, "ContactsUpgradeReceiver"

    const-string v7, "Creating or opening contacts database"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 67
    .local v0, helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-static {v6, v7}, Lcom/android/providers/contacts/EventLogTags;->writeContactsUpgradeReceiver(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0           #helper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .end local v1           #prefVersion:I
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #startTime:J
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 83
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "ContactsUpgradeReceiver"

    const-string v6, "Error during upgrade attempt. Disabling receiver."

    invoke-static {v9, v6, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
