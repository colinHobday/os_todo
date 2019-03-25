.class Lorg/apache/cordova/networkinformation/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/networkinformation/NetworkManager;->registerConnectivityActionReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/networkinformation/NetworkManager;


# direct methods
.method constructor <init>(Lorg/apache/cordova/networkinformation/NetworkManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/networkinformation/NetworkManager;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    iget-object v3, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v3, v3, Lorg/apache/cordova/networkinformation/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v4, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    iget-object v4, v4, Lorg/apache/cordova/networkinformation/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$000(Lorg/apache/cordova/networkinformation/NetworkManager;Landroid/net/NetworkInfo;)V

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "connectionType":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    invoke-static {v3}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$100(Lorg/apache/cordova/networkinformation/NetworkManager;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    .line 171
    const-string v0, "none"

    .line 181
    :goto_0
    const-string v3, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-string v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 183
    .local v2, "noConnectivity":Z
    const-string v3, "NetworkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent no connectivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz v2, :cond_3

    .line 185
    const-string v3, "NetworkManager"

    const-string v4, "Really no connectivity"

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v2    # "noConnectivity":Z
    :cond_1
    :goto_1
    return-void

    .line 174
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    invoke-static {v3}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$100(Lorg/apache/cordova/networkinformation/NetworkManager;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "NetworkManager"

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "none"

    goto :goto_0

    .line 187
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "noConnectivity":Z
    :cond_3
    const-string v3, "NetworkManager"

    const-string v4, "!!! Switching to unknown, Intent states there is a connectivity."

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lorg/apache/cordova/networkinformation/NetworkManager$1;->this$0:Lorg/apache/cordova/networkinformation/NetworkManager;

    const-string v4, "unknown"

    invoke-static {v3, v4}, Lorg/apache/cordova/networkinformation/NetworkManager;->access$200(Lorg/apache/cordova/networkinformation/NetworkManager;Ljava/lang/String;)V

    goto :goto_1
.end method
