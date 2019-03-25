.class public interface abstract Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;
.super Ljava/lang/Object;
.source "SSLSecurity.java"


# virtual methods
.method public abstract getCertificatePinner()Lokhttp3/CertificatePinner;
.end method

.method public abstract getOkHttpClient()Lokhttp3/OkHttpClient;
.end method

.method public abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
