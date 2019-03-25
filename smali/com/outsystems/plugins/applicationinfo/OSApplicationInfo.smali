.class public Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;
.super Ljava/lang/Object;
.source "OSApplicationInfo.java"

# interfaces
.implements Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;


# static fields
.field static final DEFAULT_PLATFORM_VERSION:Ljava/lang/String; = "DefaultPlatformVersion"

.field static final NATIVE_SHELL_VERSION:Ljava/lang/String; = "NativeShellVersion"

.field private static instance:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final appVersionNumber:Ljava/lang/String;

.field private final nativeShellVersion:Ljava/lang/String;

.field private final platformVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "preferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v4, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->instance:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 29
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 32
    :cond_0
    const-string v4, "DefaultPlatformVersion"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->platformVersion:Ljava/lang/String;

    .line 33
    const-string v4, "NativeShellVersion"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->nativeShellVersion:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "appVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "appVersionNumber":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 39
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 40
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iput-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->appVersion:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->appVersionNumber:Ljava/lang/String;

    .line 47
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed while trying to fetch appVersion and appVersionNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->instance:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    return-object v0
.end method

.method static declared-synchronized init(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "preferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->instance:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;

    invoke-direct {v0, p0, p1}, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    sput-object v0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->instance:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit v1

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->appVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeShellVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->nativeShellVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->platformVersion:Ljava/lang/String;

    return-object v0
.end method
