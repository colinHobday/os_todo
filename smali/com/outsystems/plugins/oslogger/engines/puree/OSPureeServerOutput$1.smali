.class Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;
.super Landroid/content/BroadcastReceiver;
.source "OSPureeServerOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;-><init>(Lokhttp3/OkHttpClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "networkEvent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/broadcaster/interfaces/Event;

    .line 70
    .local v1, "networkEvent":Lcom/outsystems/plugins/broadcaster/interfaces/Event;
    if-eqz v1, :cond_0

    .line 71
    iget-object v3, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-interface {v1}, Lcom/outsystems/plugins/broadcaster/interfaces/Event;->getData()Ljava/util/Map;

    move-result-object v2

    const-string v4, "networkStatus"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "networkOnline"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$000(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;Z)V

    .line 72
    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-static {v2}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$100(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-static {v2}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$200(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)V

    .line 74
    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-virtual {v2}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->flush()V

    .line 78
    .end local v1    # "networkEvent":Lcom/outsystems/plugins/broadcaster/interfaces/Event;
    :cond_0
    return-void
.end method
