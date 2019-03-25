.class public Lcom/cookpad/puree/internal/ProcessName;
.super Ljava/lang/Object;
.source "ProcessName.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractAndroidProcessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullProcessName"    # Ljava/lang/String;

    .prologue
    .line 32
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 33
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method static findProcessNameInAndroidWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 67
    .local v1, "pid":I
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 68
    .local v0, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 69
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v1, :cond_0

    .line 70
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 73
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static findProcessNameInLinuxWay()Ljava/lang/String;
    .locals 9

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v2, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v4, "processName":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "c":I
    if-lez v0, :cond_1

    .line 49
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 52
    .end local v0    # "c":I
    .end local v4    # "processName":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 53
    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    .line 55
    if-eqz v1, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    :cond_0
    :goto_2
    return-object v5

    .line 51
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "c":I
    .restart local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v4    # "processName":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 58
    :catch_1
    move-exception v6

    goto :goto_2

    .line 55
    .end local v0    # "c":I
    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v4    # "processName":Ljava/lang/StringBuilder;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 57
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 60
    :cond_2
    :goto_4
    throw v5

    .line 58
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 55
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 52
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public static getAndroidProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/cookpad/puree/internal/ProcessName;->findProcessNameInLinuxWay()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 22
    invoke-static {p0}, Lcom/cookpad/puree/internal/ProcessName;->findProcessNameInAndroidWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    invoke-static {v0}, Lcom/cookpad/puree/internal/ProcessName;->extractAndroidProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method
