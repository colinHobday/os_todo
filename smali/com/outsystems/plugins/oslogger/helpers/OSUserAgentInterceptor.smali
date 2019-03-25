.class public Lcom/outsystems/plugins/oslogger/helpers/OSUserAgentInterceptor;
.super Ljava/lang/Object;
.source "OSUserAgentInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/outsystems/plugins/oslogger/helpers/OSUserAgentInterceptor;->userAgent:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 26
    .local v0, "originalRequest":Lokhttp3/Request;
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/outsystems/plugins/oslogger/helpers/OSUserAgentInterceptor;->userAgent:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 29
    .local v1, "requestWithUserAgent":Lokhttp3/Request;
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
