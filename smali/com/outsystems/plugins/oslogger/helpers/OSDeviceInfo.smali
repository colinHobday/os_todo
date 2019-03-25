.class public Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;
.super Ljava/lang/Object;
.source "OSDeviceInfo.java"


# static fields
.field static final CORDOVA:Ljava/lang/String; = "Cordova"

.field static final DEVICE_MODEL:Ljava/lang/String; = "DeviceModel"

.field static final DEVICE_UUID:Ljava/lang/String; = "DeviceUUID"

.field static final EMULATOR:Ljava/lang/String; = "Emulator"

.field private static final INITIAL_CAPACITY:I = 0x9

.field static final NATIVE_SHELL:Ljava/lang/String; = "NativeShell"

.field static final NETWORK_STATUS:Ljava/lang/String; = "NetworkStatus"

.field static final NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field static final OPERATING_SYSTEM:Ljava/lang/String; = "OperatingSystem"

.field private static instance:Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;


# instance fields
.field private applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private cordovaVersion:Ljava/lang/String;

.field private deviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private deviceModel:Ljava/lang/String;

.field private deviceOSVersion:Ljava/lang/String;

.field private deviceUUID:Ljava/lang/String;

.field private isEmulator:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->instance:Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->isEmulator:Z

    .line 54
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceModel:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceUUID:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceOSVersion:Ljava/lang/String;

    .line 57
    const-string v0, "6.4.0"

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->cordovaVersion:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 59
    invoke-static {}, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->getInstance()Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    .line 60
    return-void

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->instance:Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    const-class v1, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->instance:Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    invoke-direct {v0, p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->instance:Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCordovaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->cordovaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    .line 81
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "DeviceModel"

    invoke-virtual {p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "DeviceUUID"

    invoke-virtual {p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "OperatingSystem"

    invoke-virtual {p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "Cordova"

    invoke-virtual {p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getCordovaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "NativeShell"

    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->applicationInfo:Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    invoke-interface {v2}, Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;->getNativeShellVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "NetworkStatus"

    const-string v2, "Online"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "NetworkType"

    invoke-virtual {p0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    return-object v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceInfo:Ljava/util/Map;

    const-string v1, "NetworkStatus"

    const-string v2, "Offline"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceOSVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->deviceUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    const-string v1, ""

    .line 142
    .local v1, "networkType":Ljava/lang/String;
    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 143
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 152
    const-string v1, "Unknown"

    .line 155
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 147
    goto :goto_0

    .line 149
    :pswitch_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 150
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 132
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmulator()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->isEmulator:Z

    return v0
.end method
