.class public Lcom/inveno/newpiflow/model/BizProtocal;
.super Ljava/lang/Object;
.source "BizProtocal.java"


# instance fields
.field public action:Ljava/lang/String;

.field public clsName:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public schema:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "schema"
    .parameter "action"
    .parameter "pkgName"
    .parameter "clsName"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/inveno/newpiflow/model/BizProtocal;->schema:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/inveno/newpiflow/model/BizProtocal;->action:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/inveno/newpiflow/model/BizProtocal;->pkgName:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/inveno/newpiflow/model/BizProtocal;->clsName:Ljava/lang/String;

    .line 13
    return-void
.end method
