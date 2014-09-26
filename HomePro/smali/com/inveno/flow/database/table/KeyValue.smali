.class public Lcom/inveno/flow/database/table/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/inveno/flow/database/table/KeyValue;->key:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/inveno/flow/database/table/KeyValue;->value:Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inveno/flow/database/table/KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inveno/flow/database/table/KeyValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/inveno/flow/database/table/KeyValue;->key:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/inveno/flow/database/table/KeyValue;->value:Ljava/lang/Object;

    .line 33
    return-void
.end method
