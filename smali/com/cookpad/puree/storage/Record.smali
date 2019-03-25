.class public Lcom/cookpad/puree/storage/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private final id:I

.field private final jsonLog:Lcom/google/gson/JsonObject;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/cookpad/puree/storage/Record;->id:I

    .line 27
    iput-object p2, p0, Lcom/cookpad/puree/storage/Record;->type:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/cookpad/puree/storage/Record;->jsonLog:Lcom/google/gson/JsonObject;

    .line 29
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/cookpad/puree/storage/Record;->id:I

    return v0
.end method

.method public getJsonLog()Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cookpad/puree/storage/Record;->jsonLog:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cookpad/puree/storage/Record;->type:Ljava/lang/String;

    return-object v0
.end method
