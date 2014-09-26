.class public Lcom/baidu/launcher/thememanager/network/Response$Result;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/network/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public all_count:I

.field public count:I

.field public curpage:I

.field public ret:I

.field public size:J

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/network/Response;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/network/Response;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Response$Result;->this$0:Lcom/baidu/launcher/thememanager/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
