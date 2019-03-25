.class public Lcom/outsystems/plugins/manifest/types/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"


# instance fields
.field private urlMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlMappingsNoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private versionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionToken"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->versionToken:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "versionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "urlVersionTokenMap":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "urlMappingsNoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->versionToken:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlVersions:Ljava/util/List;

    .line 22
    iput-object p3, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlMappings:Ljava/util/Map;

    .line 23
    iput-object p4, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlMappingsNoCache:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public getUrlMappings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlMappings:Ljava/util/Map;

    return-object v0
.end method

.method public getUrlMappingsNoCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlMappingsNoCache:Ljava/util/Map;

    return-object v0
.end method

.method public getUrlVersions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlVersions:Ljava/util/List;

    return-object v0
.end method

.method public getVersionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->versionToken:Ljava/lang/String;

    return-object v0
.end method

.method public setUrlMappings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlMappings:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public setUrlMappingsNoCache(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "urlMappingsNoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlMappingsNoCache:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public setUrlVersions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "urlVersions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->urlVersions:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setVersionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionToken"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/outsystems/plugins/manifest/types/Manifest;->versionToken:Ljava/lang/String;

    .line 32
    return-void
.end method
