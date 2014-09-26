.class public Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;
.super Ljava/lang/Object;
.source "RawHistoryTodayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;,
        Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    }
.end annotation


# static fields
.field public static final FINAL_ID:J = 0x1L


# instance fields
.field public brief:Ljava/lang/String;

.field public content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

.field public id:J

.field public img:Ljava/lang/String;

.field public imgHeight:I

.field public imgWidth:I

.field public time:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method
