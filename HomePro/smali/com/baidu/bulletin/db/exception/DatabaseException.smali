.class public Lcom/baidu/bulletin/db/exception/DatabaseException;
.super Ljava/sql/SQLException;
.source "DatabaseException.java"


# static fields
.field private static final serialVersionUID:J = 0x9146416e9f000aeL


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "Operation not supported!"

    iput-object v0, p0, Lcom/baidu/bulletin/db/exception/DatabaseException;->msg:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/baidu/bulletin/db/exception/DatabaseException;->msg:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bulletin/db/exception/DatabaseException;->msg:Ljava/lang/String;

    return-object v0
.end method
