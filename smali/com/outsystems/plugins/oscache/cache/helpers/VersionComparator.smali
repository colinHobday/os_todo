.class public Lcom/outsystems/plugins/oscache/cache/helpers/VersionComparator;
.super Ljava/lang/Object;
.source "VersionComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "left"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "right"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v12, 0x2e

    const/4 v10, 0x0

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v10

    .line 25
    :cond_1
    const/4 v2, 0x0

    .local v2, "leftStart":I
    const/4 v7, 0x0

    .line 27
    .local v7, "rightStart":I
    :cond_2
    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 28
    .local v1, "leftEnd":I
    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 30
    .local v6, "rightEnd":I
    if-gez v1, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "leftString":Ljava/lang/String;
    :goto_1
    if-gez v6, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, "rightString":Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 35
    .local v4, "leftValue":Ljava/lang/Integer;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 36
    .local v9, "rightValue":Ljava/lang/Integer;
    invoke-virtual {v4, v9}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 42
    .end local v4    # "leftValue":Ljava/lang/Integer;
    .end local v9    # "rightValue":Ljava/lang/Integer;
    .local v5, "result":I
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .line 43
    add-int/lit8 v7, v6, 0x1

    .line 44
    if-nez v5, :cond_3

    if-lez v2, :cond_3

    if-gtz v7, :cond_2

    .line 45
    :cond_3
    if-nez v5, :cond_7

    .line 46
    if-le v2, v7, :cond_6

    .line 47
    invoke-static {p0, v2}, Lcom/outsystems/plugins/oscache/cache/helpers/VersionComparator;->containsNonZeroValue(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    .line 30
    .end local v3    # "leftString":Ljava/lang/String;
    .end local v5    # "result":I
    .end local v8    # "rightString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 31
    .restart local v3    # "leftString":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 38
    .restart local v8    # "rightString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "result":I
    goto :goto_3

    .line 49
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    if-ge v2, v7, :cond_7

    .line 50
    invoke-static {p1, v7}, Lcom/outsystems/plugins/oscache/cache/helpers/VersionComparator;->containsNonZeroValue(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, -0x1

    goto :goto_0

    :cond_7
    move v10, v5

    .line 53
    goto :goto_0
.end method

.method private static containsNonZeroValue(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I

    .prologue
    .line 57
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 59
    .local v0, "c":C
    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    .line 60
    const/4 v2, 0x1

    .line 63
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 57
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
