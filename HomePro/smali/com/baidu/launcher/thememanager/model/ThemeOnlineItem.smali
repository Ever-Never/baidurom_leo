.class public Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
.super Ljava/lang/Object;
.source "ThemeOnlineItem.java"


# instance fields
.field public position:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "p"
    .parameter "u"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->url:Ljava/lang/String;

    .line 9
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->position:I

    .line 10
    return-void
.end method
