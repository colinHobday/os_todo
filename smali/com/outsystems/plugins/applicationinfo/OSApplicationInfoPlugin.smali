.class public Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSApplicationInfoPlugin.java"


# static fields
.field private static final ACTION_GET_APP_VERSION:Ljava/lang/String; = "getAppVersion"

.field private static final ACTION_GET_APP_VERSION_NUMBER:Ljava/lang/String; = "getAppVersionNumber"

.field private static final ACTION_GET_NATIVE_SHELL_VERSION:Ljava/lang/String; = "getNativeShellVersion"

.field private static final ACTION_GET_PLATFORM_VERSION:Ljava/lang/String; = "getPlatformVersion"


# instance fields
.field private applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 34
    const-string v1, "getPlatformVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    invoke-interface {v1}, Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 54
    :goto_0
    return v0

    .line 38
    :cond_0
    const-string v1, "getNativeShellVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    invoke-interface {v1}, Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;->getNativeShellVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "getAppVersion"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    invoke-interface {v1}, Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "getAppVersionNumber"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    iget-object v1, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    invoke-interface {v1}, Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;->getAppVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string v0, "Invalid operation"

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pluginInitialize()V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Plugin Initialize: started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->preferences:Lorg/apache/cordova/CordovaPreferences;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->init(Landroid/content/Context;Ljava/util/Map;)V

    .line 26
    invoke-static {}, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->getInstance()Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfoPlugin;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Plugin Initialize: finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
