.class public Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;
.super Ljava/lang/Object;
.source "FileChecksum.java"


# static fields
.field private static final MD5_ALGORITHM:Ljava/lang/String; = "MD5"

.field private static final UUID_BUFFER_LENGTH:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMd5Hash(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 26
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 27
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p0, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 31
    .local v1, "digestInputStream":Ljava/security/DigestInputStream;
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 32
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/security/DigestInputStream;->read([B)I

    .line 33
    invoke-virtual {v1}, Ljava/security/DigestInputStream;->close()V

    .line 35
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    return-object v3
.end method

.method private static contentHashOfData([B)Ljava/lang/String;
    .locals 2
    .param p0, "md5hash"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->createUuidFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 65
    .local v0, "uuidHash":Ljava/util/UUID;
    invoke-static {v0}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->serializeToString(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createUuidFromBytes([B)Ljava/util/UUID;
    .locals 6
    .param p0, "bytes"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 42
    .local v4, "mostSignificantBits":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 43
    .local v2, "leastSignificantBits":J
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v1
.end method

.method public static getContentHash(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->calculateMd5Hash(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 72
    .local v0, "md5hash":[B
    invoke-static {v0}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->contentHashOfData([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUuidAsBytes(Ljava/util/UUID;)[B
    .locals 4
    .param p0, "uuid"    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static serializeToString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->getUuidAsBytes(Ljava/util/UUID;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "result":Ljava/lang/String;
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
