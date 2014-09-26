.class Lcom/baidu/yi/ads/AdServiceConnector$Operation;
.super Ljava/lang/Object;
.source "AdServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Operation"
.end annotation


# static fields
.field static final EXECUTE_ACTION:I = 0x2

.field static final GET_AD_DISPLAY_PROPERTIES:I = 0x3

.field static final REQUEST_AD:I = 0x1


# instance fields
.field private mParameter:Ljava/lang/Object;

.field private mType:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "type"
    .parameter "param"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->mType:I

    .line 54
    iput-object p2, p0, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->mParameter:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method getParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->mParameter:Ljava/lang/Object;

    return-object v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->mType:I

    return v0
.end method
